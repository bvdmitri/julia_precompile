
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

## WGLMakie

struct WGLMakieSnippet <: MakieSnippet
    snippet :: String
end

snipet_package(::WGLMakieSnippet) = "WGLMakie"

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
    # "024", #broken
    "025",
]

output = NamedTuple{()}(())

PRECOMPILE_MAKIE_WGL = haskey(ENV, "PRECOMPILE_MAKIE_WGL") ? parse(Bool, ENV["PRECOMPILE_MAKIE_WGL"]) : true
PRECOMPILE_MAKIE_GL = haskey(ENV, "PRECOMPILE_MAKIE_GL") ? parse(Bool, ENV["PRECOMPILE_MAKIE_GL"]) : true
PRECOMPILE_MAKIE_CAIRO = haskey(ENV, "PRECOMPILE_MAKIE_CAIRO") ? parse(Bool, ENV["PRECOMPILE_MAKIE_CAIRO"]) : true

PRECOMPILE_MAKIE_WGL ? output = (output..., WGLMakie = WGLMakieSnippet.(snippets)) : nothing
PRECOMPILE_MAKIE_GL ? output = (output..., GLMakie = GLMakieSnippet.(snippets)) : nothing
PRECOMPILE_MAKIE_CAIRO ? output = (output..., CairoMakie = CairoMakieSnippet.(snippets)) : nothing

output
