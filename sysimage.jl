
makie_snippets = include("./packages/makie.jl")
plots_snippets = include("./packages/plots.jl")

all_snippets = filter(v -> !isempty(last(v)), reduce(merge, (
    makie_snippets, 
    plots_snippets,
)))

all_pkgs = collect(keys(all_snippets))

precompile_execution_file = "./precompile_execution.jl"

if isempty(all_pkgs)
    @error "Nothing to precompile"
    exit()
else
    @info "Compiling packages: $all_pkgs"
end

using PackageCompiler

PackageCompiler.create_sysimage(
    Symbol.(all_pkgs); 
    precompile_execution_file = precompile_execution_file, 
    replace_default = true
)