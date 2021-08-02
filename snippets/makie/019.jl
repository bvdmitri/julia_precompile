let
    x = -2:0.005:2
    y = -2:0.005:2
    f(z) = 1/(z*(z^2 - z -1 - 3im))
    fvals = [f(u+1im*v) for u in x, v in y]
    fvalues = abs.(fvals)
    fargs = angle.(fvals)
    polya(x,y) = Point(real(f(x + 1im*y)), -imag(f(x + 1im*y)))

    fig = Makie.Figure(resolution = (960,450))
    ax1 = Makie.Axis(fig, aspect = 1)
    ax2 = Makie.Axis(fig, aspect = 1)
    cmap = :diverging_rainbow_bgymr_45_85_c67_n256
    Makie.streamplot!(ax1, polya, -2..2, -2..2, colormap = (:black,:red),
            gridsize= (40,40), arrow_size = 6,linewidth=1)
    pltobj2 = Makie.heatmap!(ax2, x, y, fargs, colorrange = (-π,π), colormap = cmap)
    Makie.streamplot!(ax2, polya, -2..2, -2..2, colormap = (:white,:black),
            gridsize= (40,40), arrow_size = 6,linewidth=1)
    cbar = Makie.Colorbar(fig, pltobj2,
            ticks = ([-π,-π/2,0,π/2,π],["-π", "-π/2", "0", "π/2", "π"]))
            Makie.limits!(ax1, -2,2,-2,2)
            Makie.limits!(ax2, -2,2,-2,2)
    fig[1,1] = ax1
    fig[1,2] = ax2
    fig[1,3] = cbar
    fig
end