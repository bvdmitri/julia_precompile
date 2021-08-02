let
    nonStablePoincare(x,y) = Point(x*(x^2+y^2-1) - y*(x^2+y^2+1),y*(x^2+y^2-1) + x*(x^2+y^2+1))
    stableVanDerPaul(x,y) = Point(y, (1-x^2)*y -x)
    semiStable(x,y) = Point(-y+ x*(-1+x^2+y^2)^2, x+y*(-1+x^2+y^2)^2)

    fig = Makie.Figure(resolution = (900, 400), fontsize = 20)
    ax1 = fig[1, 1] = Makie.Axis(fig, xlabel = "x", ylabel = "y", title = "non-stable",
    aspect = 1, backgroundcolor = :black)
    ax2 = fig[1, 2] = Makie.Axis(fig, xlabel = "x", title = "stable",
    aspect = 1,backgroundcolor = :black)
    ax3 = fig[1, 3] = Makie.Axis(fig, xlabel = "x", title = "semi-stable",
    aspect = 1, backgroundcolor = :black)

    Makie.streamplot!(ax1, nonStablePoincare, -4..4, -4..4, colormap = Reverse(:plasma),
        gridsize= (32,32), arrow_size = 10)
        Makie.streamplot!(ax2, stableVanDerPaul, -4..4, -4..4, colormap = Reverse(:viridis),
        gridsize= (32,32), arrow_size = 10)
        Makie.streamplot!(ax3, semiStable, -4..4, -4..4, colormap = Reverse(:inferno),
        gridsize= (32,32), arrow_size = 10)
        Makie.hideydecorations!(ax2, grid = false)
        Makie.hideydecorations!(ax3, grid = false)
        Makie.limits!(ax1, -4, 4, -4, 4)
        Makie.limits!(ax2, -4, 4, -4, 4)
        Makie.limits!(ax3, -4, 4, -4, 4)
    fig
    #save("streamplots3.png", fig, px_per_unit = 2)
end