let
    function tα_qubit(β, ψ1, ψ2, fα, f)
        2 + 2*β - cos(ψ1) - cos(ψ2) - 2*β*cos(π*fα)*cos(2*π*f + π*fα - ψ1- ψ2)
    end
    ψ1 = ψ2 = LinRange(0, 4*π, 100)
    z = [tα_qubit(.61, x, y, 0.2, .1) for x in ψ1, y in ψ2]

    fig = Makie.Figure(resolution = (470, 400))
    ax = Makie.Axis(fig, aspect = 1, xlabel = "ψ1", ylabel = "ψ2")
    clines = Makie.contour!(ψ1, ψ2, z,colormap = :plasma,levels = 20,linewidth = 1.5)
    Makie.limits!(ax, 0, 4π, 0, 4π)
    cbar  = Makie.Colorbar(fig, clines, label ="α-q", height = Relative(3.55/4))
    fig[1, 1] = ax
    fig[1, 2] = cbar
    fig
end