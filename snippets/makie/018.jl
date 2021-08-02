let
    xs = LinRange(-3, 3, 20)
    ys = LinRange(-3, 3, 20)
    us = [x + y for x in xs, y in ys]
    vs = [y - x for x in xs, y in ys]
    strength = vec(sqrt.(us .^2 .+ vs .^2))

    fig = Makie.Figure(resolution = (550, 450), fontsize = 18, font = "sans")
    ax = Makie.Axis(fig, xlabel = "x", ylabel = "y", aspect = 1)
    Makie.arrows!(ax, xs, ys, us, vs, arrowsize = 10, lengthscale = 0.1,
        arrowcolor = strength, linecolor = strength, colormap = :plasma)
    cbar = Makie.Colorbar(fig, limits =(minimum(strength),maximum(strength)),
    nsteps =100, colormap = :plasma, ticksize=15, width = 15, tickalign=1)
    Makie.limits!(ax, -3,3,-3,3)
    fig[1,1] = ax
    fig[1,2] = cbar
    fig
    #save("arrows.png", fig, px_per_unit = 2)
end