using Random

let
    Random.seed!(13)
    n = 3000
    data = randn(n)
    fig = Makie.Figure(resolution = (700, 450), font = "sans", fontsize = 20)
    ax1 = Makie.Axis(fig, xlabel = "value" )
    Makie.hist!(ax1,data,normalization=:pdf,color = (:red,0.5), label = "hist & pdf")
    Makie.density!(ax1, data, color =(:grey, 0.5), label = "density!", strokewidth=1)
    Makie.axislegend(ax1, position = :rt)
    fig[1,1] = ax1
    fig
end