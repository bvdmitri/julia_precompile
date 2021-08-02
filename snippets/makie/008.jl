using Random

let
    Random.seed!(13)
    n = 3000
    data = randn(n)
    fig = Makie.Figure(resolution = (1200, 800), font = "sans", fontsize = 20)
    ax1 = Makie.Axis(fig, xlabel = "value", ylabel = "samples" )
    ax2 = Makie.Axis(fig, xlabel = "value", ylabel = "counts" )
    ax3 = Makie.Axis(fig, xlabel = "value", ylabel = "counts")
    ax4 = Makie.Axis(fig, xlabel = "value", ylabel = "counts" )
    #scatter plot
    Makie.scatter!(ax1, data, 1:n, markersize = 4, color = :black)
    Makie.hist!(ax2, data, label = "default")
    Makie.hist!(ax3, data, bins = 20, color = :orange, strokewidth = 1,
    strokecolor = :black, label = "20 bins")
    Makie.hist!(ax4, data, bins = [-4, -2, -1, 0, 1, 2, 4], color = :gray90,
    strokewidth = 1, strokecolor = :black, label = "manual bins")
    Makie.axislegend(ax2, position = :rt)
    Makie.axislegend(ax3, position = :rt)
    Makie.axislegend(ax4, position = :rt)
    fig[1,1] = ax1
    fig[1,2] = ax2
    fig[2,1] = ax3
    fig[2,2] = ax4
    fig
end