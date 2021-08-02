
abstract type PlotsSnippet end

get_snippet(p::PlotsSnippet)      = p.snippet
get_snippets_path(::PlotsSnippet) = "plots/"

snippet_prefix(s::PlotsSnippet) = "using $(snipet_package(s)); $(snipet_subpackage(s))(); "
snippet_suffix(s::PlotsSnippet) = """
    display(output);
    try 
        Plots.savefig(output, \"./tmp/$(snipet_subpackage(s))_$(get_snippet(s)).png\"); 
        Plots.savefig(output, \"./tmp/$(snipet_subpackage(s))_$(get_snippet(s)).svg\");
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
]

Dict(
    :Plots      => GRPlotsSnippet.(snippets),
)
