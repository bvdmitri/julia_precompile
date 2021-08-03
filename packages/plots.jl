
abstract type PlotsSnippet end

get_snippet(p::PlotsSnippet)      = p.snippet
get_snippets_path(::PlotsSnippet) = "plots/"

snippet_prefix(s::PlotsSnippet) = "using $(snipet_package(s)); $(snipet_subpackage(s))(); "
snippet_suffix(s::PlotsSnippet) = """
    display(output);
    try 
        savefig(output, \"./tmp/$(snipet_subpackage(s))_$(get_snippet(s)).png\"); 
        savefig(output, \"./tmp/$(snipet_subpackage(s))_$(get_snippet(s)).svg\");
    catch e
        @warn e
    end
"""

## GR Plots

struct GRPlotsSnippet <: PlotsSnippet
    snippet :: String
end

snipet_package(::GRPlotsSnippet)    = "Plots"
snipet_subpackage(::GRPlotsSnippet) = "gr"

## PGFPlotsX Plots

struct PGFPlotsSnippet <: PlotsSnippet
    snippet :: String
end

snipet_package(::PGFPlotsSnippet)    = "Plots"
snipet_subpackage(::PGFPlotsSnippet) = "pgfplotsx"

## PGFPlotsX Plots

struct PyPlotPlotsSnippet <: PlotsSnippet
    snippet :: String
end

snipet_package(::PyPlotPlotsSnippet)    = "Plots"
snipet_subpackage(::PyPlotPlotsSnippet) = "pyplot"

## 

snippets = [
    "001",
    "002",
    "003",
    "004",
    "005",
    "006",
    "007",
    "008",
    "009",
    "010",
    "011",
    "012",
    "013",
    "014",
    "015",
    "016",
    "017",
    "018",
    "019",
    "020",
    "021",
    "022",
    "023",
    "024",
    "025",
]

output = Dict(:Plots => [])

parse(Bool, ENV["PRECOMPILE_PLOTS_GR"]) ? output[:Plots] = vcat(output[:Plots], GRPlotsSnippet.(snippets)) : nothing
parse(Bool, ENV["PRECOMPILE_PLOTS_PGF"]) ? output[:Plots] = vcat(output[:Plots], PGFPlotsSnippet.(snippets)) : nothing
parse(Bool, ENV["PRECOMPILE_PLOTS_PYPLOT"]) ? output[:Plots] = vcat(output[:Plots], PyPlotPlotsSnippet.(snippets)) : nothing

output
