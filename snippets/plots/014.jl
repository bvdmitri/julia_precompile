let 
    sv = rand(10)
    ov = rand(10)
    plot([sv, ov], label = ["StaticArray" "OffsetArray"])
    plot!(3ov, ribbon = ov, label = "OffsetArray ribbon")
end