using Clang
# using Assimp.LibAssimp.assimp_jll
using assimp_jll

const ASSIMP_INCLUDE = joinpath(dirname(assimp_jll.libassimp_path), "..", "include") |> normpath
const C_INTERFACE_HEADERS = ["defs.h", "vector2.h", "vector3.h", "matrix3x3.h", "matrix4x4.h", "color4.h", "types.h", "aabb.h",
                             "cfileio.h", "cimport.h", "importerdesc.h", "cexport.h", "material.h", "scene.h", "texture.h", "quaternion.h",
                             "pbrmaterial.h", "mesh.h", "light.h", "anim.h", "camera.h", "metadata.h", "version.h"]
const ASSIMP_HEADERS = [joinpath(ASSIMP_INCLUDE, "assimp", h) for h in C_INTERFACE_HEADERS]

# create a work context
ctx = DefaultContext()

# parse headers
parse_headers!(ctx, ASSIMP_HEADERS,
               args=[map(x->"-I"*x, find_std_headers())...],
               includes=[ASSIMP_INCLUDE, CLANG_INCLUDE])
# settings
ctx.libname = "libassimp"
ctx.options["is_function_strictly_typed"] = false
ctx.options["is_struct_mutable"] = false

# write output
api_file = joinpath(@__DIR__, "libassimp_api.jl")
api_stream = open(api_file, "w")

for trans_unit in ctx.trans_units
    root_cursor = getcursor(trans_unit)
    push!(ctx.cursor_stack, root_cursor)
    header = spelling(root_cursor)
    @info "wrapping header: $header ..."
    # loop over all of the child cursors and wrap them, if appropriate.
    ctx.children = children(root_cursor)
    for (i, child) in enumerate(ctx.children)
        child_name = name(child)
        child_header = filename(child)
        ctx.children_index = i
        # choose which cursor to wrap
        startswith(child_name, "__") && continue  # skip compiler definitions
        child_name in keys(ctx.common_buffer) && continue  # already wrapped
        child_header != header && continue

        wrap!(ctx, child)
    end
    @info "writing $(api_file)"
    println(api_stream, "# Julia wrapper for header: $(basename(header))")
    println(api_stream, "# Automatically generated using Clang.jl\n")
    print_buffer(api_stream, ctx.api_buffer)
    empty!(ctx.api_buffer)  # clean up api_buffer for the next header
end
close(api_stream)

# write "common" definitions: types, typealiases, etc.
common_file = joinpath(@__DIR__, "libassimp_common.jl")
open(common_file, "w") do f
    println(f, "# Automatically generated using Clang.jl\n")
    print_buffer(f, dump_to_buffer(ctx.common_buffer))
end

# uncomment the following code to generate dependency and template files
# copydeps(dirname(api_file))
# print_template(joinpath(dirname(api_file), "LibTemplate.jl"))
