using Random
let
    Random.seed!(123)
    n = 15
    x, y, color = rand(n), rand(n), rand(n)
    cmaps=[:cool,:viridis,:plasma,:inferno,:thermal,:leonardo,:winter,:spring,:ice]

    function FigGridHeatSharedCbar()
        fig = Figure(resolution = (700, 500))
        c = 1
        for i in 1:2, j in 1:2:3
            ax=Axis(fig[i, j],aspect = 1,xgridvisible = false,ygridvisible = false)
            pnts = heatmap!(rand(10,10), colormap= cmaps[j], colorrange=(0, 1))
            ax.xticks = [1,10]
            ax.yticks = [1,10]
            ax.xticklabelsize = 16
            ax.yticklabelsize = 16

            cbar = Colorbar(fig, pnts, ticklabelsize = 14, height = Relative(3/4),
            tickwidth = 2)
            cbar.ticks = [0, 0.5, 1]
            fig[1:2, j+1] = cbar
            c+=1
        end
        fig
    end
    fig = FigGridHeatSharedCbar()
    fig
end