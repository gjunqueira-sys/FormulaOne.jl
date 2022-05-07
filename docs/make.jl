using FormulaOne
using Documenter

DocMeta.setdocmeta!(FormulaOne, :DocTestSetup, :(using FormulaOne); recursive=true)

makedocs(;
    modules=[FormulaOne],
    authors="Gil Junqueira",
    repo="https://github.com/gjunqueira-sys/FormulaOne.jl/blob/{commit}{path}#{line}",
    sitename="FormulaOne.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://gjunqueira-sys.github.io/FormulaOne.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/gjunqueira-sys/FormulaOne.jl",
    devbranch="master",
)
