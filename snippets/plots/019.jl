let
    plot(plot(0:10; ribbon = (LinRange(0, 2, 11), LinRange(0, 1, 11))), plot(0:10; ribbon = 0:0.5:5), plot(0:10; ribbon = sqrt), plot(0:10; ribbon = 1))
end