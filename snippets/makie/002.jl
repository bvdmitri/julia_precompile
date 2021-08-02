let
    x = 0:0.05:1
    y = x.^2
    fig = Makie.Figure(resolution = (700, 450))
    ax = Makie.Axis(fig, xlabel = "x", ylabel = "y")
    linea = Makie.lines!(x, y, color = :dodgerblue)
    fillB = Makie.band!(x, fill(0,length(x)), y; color = (:dodgerblue, 0.1))
    leg = Makie.Legend(fig, [[linea, fillB]], ["Label"], halign = :left, valign = :top,
                tellheight = false, tellwidth = false, margin = (10, 10, 10, 10))
    fig[1, 1] = ax
    fig[1, 1] = leg
    fig
end