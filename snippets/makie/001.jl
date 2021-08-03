let
    x, y, yerr = 1:2:20, 5*rand(10), 0.4*abs.(randn(10))
    fig = Figure(resolution = (700, 450), font = "sans")
    ax = Axis(fig, xlabel = "variables", ylabel = "values")
    barplot!(ax, x,y,strokewidth = 1,color = x,colormap = (:Spectral_10, 0.85),
            strokecolor = :black)
    errorbars!(ax, x, y, yerr, whiskerwidth = 12)
    fig[1,1] = ax
    fig
end