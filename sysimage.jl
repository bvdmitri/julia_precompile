
makie_snippets = include("./makie.jl")
plots_snippets = include("./plots.jl")

all_snippets = reduce(merge, (
    makie_snippets, 
    plots_snippets,
))

all_pkgs = collect(keys(all_snippets))

precompile_execution_file = "./precompile_execution.jl"

using PackageCompiler

try
    PackageCompiler.restore_default_sysimage()
catch error
    @warn error
end

PackageCompiler.create_sysimage(
    all_pkgs; 
    precompile_execution_file = precompile_execution_file, 
    replace_default = true
)