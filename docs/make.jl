using PlutoStaticHTMLDemo
using Documenter

DocMeta.setdocmeta!(PlutoStaticHTMLDemo, :DocTestSetup, :(using PlutoStaticHTMLDemo); recursive=true)

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
    ],
)

deploydocs(;
    repo="github.com/sethaxen/PlutoStaticHTMLDemo.jl",
    devbranch="main",
)
