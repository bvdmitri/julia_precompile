let 
    sv = rand(10)
    ov = rand(10)
    Plots.plot([sv, ov], label = ["StaticArray" "OffsetArray"])
    Plots.plot!(3ov, ribbon = ov, label = "OffsetArray ribbon")
end