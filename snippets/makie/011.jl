let
    f(x,y) = (x + 2y^2) * abs(sin(y) + cos(x))
    x = y = 1:0.2:20
    z = [f(x,y) for x in x, y in y]
    fig = Makie.Figure(resolution=(900,400), fontsize = 16)
    ax1 = Makie.Axis(fig, aspect = 1, xlabel = "x", ylabel = "y", tickalign = 1)
    ax2 = Makie.Axis(fig, aspect = 1,  xlabel = "x", tickalign = 1)
    ax3 = Makie.Axis(fig, aspect = 1,  xlabel = "x", tickalign = 1)
    p1 = Makie.heatmap!(ax1, x, y, z, colormap = :plasma)
    Makie.contour!(ax2, x, y, z, color = :black, levels = 100:1:101)
    Makie.heatmap!(ax3, x, y, z, colormap = (:plasma, 0.5))
    Makie.contour!(ax3, x, y, z, color = :white, levels = 100:1:101)
    cbar = Makie.Colorbar(fig, p1, width = 10, ticksize=10, ticklabelsize = 10,
        tickalign = 1, height = Relative(0.7))
        Makie.limits!(ax1, 1,20,1,20)
        Makie.limits!(ax2, 1,20,1,20)
        Makie.limits!(ax3, 1,20,1,20)
        Makie.hideydecorations!(ax2, grid = false, ticks = false)
        Makie.hideydecorations!(ax3, grid = false, ticks = false)
    fig[1,1] = ax1
    fig[1,2] = ax2
    fig[1,3] = ax3
    fig[1,4] = cbar
    fig
end