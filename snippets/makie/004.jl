let
    x = LinRange(-10,10,200)
    fig = Makie.Figure(resolution = (700, 450))
    ax = Makie.Axis(fig, xlabel = "x", ylabel = "y")
    # filled curve 1
    Makie.band!(x, sin.(x), sin.(x) .+ 1; color = ("#E69F00", 0.2))
    # filled curve 2
    Makie.band!(x, cos.(x), 1 .+ cos.(x); color = (:red, 0.2))
    fig[1,1] = ax
    fig
end