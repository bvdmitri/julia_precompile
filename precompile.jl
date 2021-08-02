
__JULIA_PATH = "/usr/local/bin/julia"

bashit(str)  = run(`bash -c $str`)

function julia_precompile(code, precompile_file) 
    bashit("$__JULIA_PATH --trace-compile='$precompile_file' -e '$code'")
    return precompile_file
end

function snippet_code(snippet)
    return string(snippet_prefix(snippet), "; output = include(\"./snippets/", get_snippets_path(snippet), "/", get_snippet(snippet), ".jl\"); ", snippet_suffix(snippet))
end

function precompile_snippets(package, snippets) 
    snippet_codes = map(snippet_code, snippets)
    code = join(snippet_codes, ";")

    precompile_path = string("./precompile/", package, "/")
    precompile_file = string(precompile_path, "/precompile.jl")

    mkpath(precompile_path)
    return julia_precompile(code, precompile_file)
end

function get_snippet end
function get_snippets_path end
function get_precompile_path end
function snippet_prefix end
function snippet_suffix end

mkpath("./tmp")

makie_snippets = include("./makie.jl")
plots_snippets = include("./plots.jl")

all_snippets = reduce(merge, (
    # makie_snippets, 
    plots_snippets,
))

precompile_execution_file = "./precompile_execution.jl"

open(precompile_execution_file, "w") do io
    for (package, snippets) in all_snippets
        snippet_codes = map(snippet_code, snippets)
        println(io, join(snippet_codes, ";"))
    end
end