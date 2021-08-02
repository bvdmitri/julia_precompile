
abstract type MakieSnippet end

get_snippet(p::MakieSnippet)      = p.snippet
get_snippets_path(::MakieSnippet) = "makie/"

snippet_prefix(s::MakieSnippet) = "using $(snipet_package(s)); $(snipet_package(s)).activate!(); "
snippet_suffix(s::MakieSnippet) = """
    display(output);
    try 
        save(\"./tmp/$(snipet_package(s))_$(get_snippet(s)).png\", output); 
        save(\"./tmp/$(snipet_package(s))_$(get_snippet(s)).svg\", output);
    catch e
        @warn e
    end
"""

## GLMakie

struct GLMakieSnippet <: MakieSnippet
    snippet :: String
end

snipet_package(::GLMakieSnippet) = "GLMakie"

## CairoMakie

struct CairoMakieSnippet <: MakieSnippet
    snippet :: String
end

snipet_package(::CairoMakieSnippet) = "CairoMakie"

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
]

Dict(
    :GLMakie    => GLMakieSnippet.(snippets),
    :CairoMakie => CairoMakieSnippet.(snippets),
)
