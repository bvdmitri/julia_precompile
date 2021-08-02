let 
    y = rand(10)
    Plots.plot(y, annotations = (3, y[3], Plots.text("this is #3", :left)), leg = false)
    Plots.annotate!([(5, y[5], ("this is #5", 16, :red, :center)), (10, y[10], ("this is #10", :right, 20, "courier"))])
    Plots.scatter!(range(2, stop = 8, length = 6), rand(6), marker = (50, 0.2, :orange), series_annotations = ["series", "annotations", "map", "to", "series", Plots.text("data", :green)])
end