using PlutoStaticHTMLDemo
using Documenter
using PlutoStaticHTML

DocMeta.setdocmeta!(PlutoStaticHTMLDemo, :DocTestSetup, :(using PlutoStaticHTMLDemo); recursive=true)

const DOCS_SRC_PATH = joinpath(@__DIR__, "src")
output_format = PlutoStaticHTML.documenter_output
build_opts = PlutoStaticHTML.BuildOptions(
    DOCS_SRC_PATH; previous_dir=DOCS_SRC_PATH, output_format=output_format
)
PlutoStaticHTML.build_notebooks(build_opts)

makedocs(;
    modules=[PlutoStaticHTMLDemo],
    authors="Seth Axen <seth.axen@gmail.com> and contributors",
    repo="https://github.com/sethaxen/PlutoStaticHTMLDemo.jl/blob/{commit}{path}#{line}",
    sitename="PlutoStaticHTMLDemo.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://sethaxen.github.io/PlutoStaticHTMLDemo.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "Plotting in Pluto" => "notebook.md",
    ],
)

deploydocs(;
    repo="github.com/sethaxen/PlutoStaticHTMLDemo.jl",
    devbranch="main",
)
