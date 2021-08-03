let
    l = @layout([a{0.1h}; b [c; d e]])
    plot(randn(100, 5), layout = l, t = [:line :histogram :scatter :steppre :bar], leg = false, ticks = nothing, border = :none)
end