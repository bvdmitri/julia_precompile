let
    group = rand(map((i->begin
        "group $(i)"
    end), 1:4), 100)
    plot(rand(100), layout = @layout([a b; c]), group = group, linetype = [:bar :scatter :steppre], linecolor = :match)
end