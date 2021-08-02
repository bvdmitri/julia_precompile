let
    x = y = -10:0.11:10
    y1d =  sin.(x) ./ x
    lower = y1d .- 0.1
    upper = y1d .+ 0.1
    fig = Figure(resolution = (600, 400))
    ax = Axis(fig, xlabel = "x", ylabel = "y")
    lines!(x, y1d, color = :black)
    band!(x, lower, upper; color = ("#E69F00", 0.2))
    fig[1,1] = ax
    fig
end