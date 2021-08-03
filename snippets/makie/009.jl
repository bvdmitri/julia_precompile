using Random

let
    Random.seed!(13)
    n = 3000
    data = randn(n)
    fig = Figure(resolution = (700, 450), font = "sans", fontsize = 20)
    ax1 = Axis(fig, xlabel = "value" )
    hist!(ax1,data,normalization=:pdf,color = (:red,0.5), label = "hist & pdf")
    density!(ax1, data, color =(:grey, 0.5), label = "density!", strokewidth=1)
    axislegend(ax1, position = :rt)
    fig[1,1] = ax1
    fig
end