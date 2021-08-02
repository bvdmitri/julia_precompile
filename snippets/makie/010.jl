let
    x = -1:0.02:1
    y = -1.5:0.02:2
    egg(x,y) = x^2 + y^2/(1.4 + y/5)^2
    segg = [egg(x,y) for x in x, y in y]
    fig = Makie.Figure(resolution = (470, 550))
    ax = Makie.Axis(fig, xlabel = "x", ylabel = "y", backgroundcolor = :black,
    xgridstyle=:dash, ygridstyle=:dash, xgridcolor = :grey, ygridcolor = :grey)
    cl = Makie.contour!(x, y, segg, linewidth = 0.85,colormap = :viridis,
                levels = 0:0.02:1)
    cbar = Makie.Colorbar(fig, cl, label ="egg-l", labelpadding = 0, width = 15,
                ticksize=15, tickalign = 1, height = Relative(1))
    fig[1, 1] = ax
    fig[1, 2] = cbar
    Makie.colgap!(fig.layout, 7)
    fig
end