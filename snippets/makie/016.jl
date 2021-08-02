using Random

let
    Random.seed!(124)
    n = 30
    x, y, z = randn(n), randn(n), randn(n)
    fig = Makie.Figure(resolution = (800, 450))
    ax = Makie.Axis(fig,xgridstyle=:dash,ygridstyle=:dash, xtickalign=1, ytickalign=1)
    pts1= Makie.scatter!(ax, x, y, color = z, colormap=:plasma, markersize = 15z,
                marker = :rect)
    pts2= Makie.scatter!(ax, 3x, 5y, color = z, colormap= (:thermal, 0.5),
                markersize = 45z, marker = :circle)

    leg1 = Makie.Colorbar(fig, pts1, label = "z1 value", ticklabelsize = 14,
                labelpadding = 5, width = 10)
    leg2= Makie.Colorbar(fig, pts2, label = "z2 value", ticklabelsize = 14,
                labelpadding = 5, width = 10)
    fig[1, 1] = ax
    fig[1, 2] = leg1
    fig[1, 3] = leg2
    fig
end