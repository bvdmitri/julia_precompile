using Plots; gr(); ; output = include("./snippets/plots//001.jl");     display(output);
    try 
        Plots.savefig(output, "./tmp/gr_001.png"); 
        Plots.savefig(output, "./tmp/gr_001.svg");
    catch e
        @warn e
    end
;using Plots; gr(); ; output = include("./snippets/plots//002.jl");     display(output);
    try 
        Plots.savefig(output, "./tmp/gr_002.png"); 
        Plots.savefig(output, "./tmp/gr_002.svg");
    catch e
        @warn e
    end
;using Plots; gr(); ; output = include("./snippets/plots//003.jl");     display(output);
    try 
        Plots.savefig(output, "./tmp/gr_003.png"); 
        Plots.savefig(output, "./tmp/gr_003.svg");
    catch e
        @warn e
    end
;using Plots; gr(); ; output = include("./snippets/plots//004.jl");     display(output);
    try 
        Plots.savefig(output, "./tmp/gr_004.png"); 
        Plots.savefig(output, "./tmp/gr_004.svg");
    catch e
        @warn e
    end
;using Plots; gr(); ; output = include("./snippets/plots//005.jl");     display(output);
    try 
        Plots.savefig(output, "./tmp/gr_005.png"); 
        Plots.savefig(output, "./tmp/gr_005.svg");
    catch e
        @warn e
    end
;using Plots; gr(); ; output = include("./snippets/plots//006.jl");     display(output);
    try 
        Plots.savefig(output, "./tmp/gr_006.png"); 
        Plots.savefig(output, "./tmp/gr_006.svg");
    catch e
        @warn e
    end
;using Plots; gr(); ; output = include("./snippets/plots//007.jl");     display(output);
    try 
        Plots.savefig(output, "./tmp/gr_007.png"); 
        Plots.savefig(output, "./tmp/gr_007.svg");
    catch e
        @warn e
    end
;using Plots; gr(); ; output = include("./snippets/plots//008.jl");     display(output);
    try 
        Plots.savefig(output, "./tmp/gr_008.png"); 
        Plots.savefig(output, "./tmp/gr_008.svg");
    catch e
        @warn e
    end
;using Plots; gr(); ; output = include("./snippets/plots//009.jl");     display(output);
    try 
        Plots.savefig(output, "./tmp/gr_009.png"); 
        Plots.savefig(output, "./tmp/gr_009.svg");
    catch e
        @warn e
    end
;using Plots; gr(); ; output = include("./snippets/plots//010.jl");     display(output);
    try 
        Plots.savefig(output, "./tmp/gr_010.png"); 
        Plots.savefig(output, "./tmp/gr_010.svg");
    catch e
        @warn e
    end
;using Plots; gr(); ; output = include("./snippets/plots//011.jl");     display(output);
    try 
        Plots.savefig(output, "./tmp/gr_011.png"); 
        Plots.savefig(output, "./tmp/gr_011.svg");
    catch e
        @warn e
    end
;using Plots; gr(); ; output = include("./snippets/plots//012.jl");     display(output);
    try 
        Plots.savefig(output, "./tmp/gr_012.png"); 
        Plots.savefig(output, "./tmp/gr_012.svg");
    catch e
        @warn e
    end
;using Plots; gr(); ; output = include("./snippets/plots//013.jl");     display(output);
    try 
        Plots.savefig(output, "./tmp/gr_013.png"); 
        Plots.savefig(output, "./tmp/gr_013.svg");
    catch e
        @warn e
    end
;using Plots; gr(); ; output = include("./snippets/plots//014.jl");     display(output);
    try 
        Plots.savefig(output, "./tmp/gr_014.png"); 
        Plots.savefig(output, "./tmp/gr_014.svg");
    catch e
        @warn e
    end

using CairoMakie; CairoMakie.activate!(); ; output = include("./snippets/makie//001.jl");     display(output);
    try 
        save("./tmp/CairoMakie_001.png", output); 
        save("./tmp/CairoMakie_001.svg", output);
    catch e
        @warn e
    end
;using CairoMakie; CairoMakie.activate!(); ; output = include("./snippets/makie//002.jl");     display(output);
    try 
        save("./tmp/CairoMakie_002.png", output); 
        save("./tmp/CairoMakie_002.svg", output);
    catch e
        @warn e
    end
;using CairoMakie; CairoMakie.activate!(); ; output = include("./snippets/makie//003.jl");     display(output);
    try 
        save("./tmp/CairoMakie_003.png", output); 
        save("./tmp/CairoMakie_003.svg", output);
    catch e
        @warn e
    end
;using CairoMakie; CairoMakie.activate!(); ; output = include("./snippets/makie//004.jl");     display(output);
    try 
        save("./tmp/CairoMakie_004.png", output); 
        save("./tmp/CairoMakie_004.svg", output);
    catch e
        @warn e
    end
;using CairoMakie; CairoMakie.activate!(); ; output = include("./snippets/makie//005.jl");     display(output);
    try 
        save("./tmp/CairoMakie_005.png", output); 
        save("./tmp/CairoMakie_005.svg", output);
    catch e
        @warn e
    end
;using CairoMakie; CairoMakie.activate!(); ; output = include("./snippets/makie//006.jl");     display(output);
    try 
        save("./tmp/CairoMakie_006.png", output); 
        save("./tmp/CairoMakie_006.svg", output);
    catch e
        @warn e
    end
;using CairoMakie; CairoMakie.activate!(); ; output = include("./snippets/makie//007.jl");     display(output);
    try 
        save("./tmp/CairoMakie_007.png", output); 
        save("./tmp/CairoMakie_007.svg", output);
    catch e
        @warn e
    end
;using CairoMakie; CairoMakie.activate!(); ; output = include("./snippets/makie//008.jl");     display(output);
    try 
        save("./tmp/CairoMakie_008.png", output); 
        save("./tmp/CairoMakie_008.svg", output);
    catch e
        @warn e
    end
;using CairoMakie; CairoMakie.activate!(); ; output = include("./snippets/makie//009.jl");     display(output);
    try 
        save("./tmp/CairoMakie_009.png", output); 
        save("./tmp/CairoMakie_009.svg", output);
    catch e
        @warn e
    end
;using CairoMakie; CairoMakie.activate!(); ; output = include("./snippets/makie//010.jl");     display(output);
    try 
        save("./tmp/CairoMakie_010.png", output); 
        save("./tmp/CairoMakie_010.svg", output);
    catch e
        @warn e
    end
;using CairoMakie; CairoMakie.activate!(); ; output = include("./snippets/makie//011.jl");     display(output);
    try 
        save("./tmp/CairoMakie_011.png", output); 
        save("./tmp/CairoMakie_011.svg", output);
    catch e
        @warn e
    end
;using CairoMakie; CairoMakie.activate!(); ; output = include("./snippets/makie//012.jl");     display(output);
    try 
        save("./tmp/CairoMakie_012.png", output); 
        save("./tmp/CairoMakie_012.svg", output);
    catch e
        @warn e
    end
;using CairoMakie; CairoMakie.activate!(); ; output = include("./snippets/makie//013.jl");     display(output);
    try 
        save("./tmp/CairoMakie_013.png", output); 
        save("./tmp/CairoMakie_013.svg", output);
    catch e
        @warn e
    end
;using CairoMakie; CairoMakie.activate!(); ; output = include("./snippets/makie//014.jl");     display(output);
    try 
        save("./tmp/CairoMakie_014.png", output); 
        save("./tmp/CairoMakie_014.svg", output);
    catch e
        @warn e
    end
;using CairoMakie; CairoMakie.activate!(); ; output = include("./snippets/makie//015.jl");     display(output);
    try 
        save("./tmp/CairoMakie_015.png", output); 
        save("./tmp/CairoMakie_015.svg", output);
    catch e
        @warn e
    end
;using CairoMakie; CairoMakie.activate!(); ; output = include("./snippets/makie//016.jl");     display(output);
    try 
        save("./tmp/CairoMakie_016.png", output); 
        save("./tmp/CairoMakie_016.svg", output);
    catch e
        @warn e
    end
;using CairoMakie; CairoMakie.activate!(); ; output = include("./snippets/makie//017.jl");     display(output);
    try 
        save("./tmp/CairoMakie_017.png", output); 
        save("./tmp/CairoMakie_017.svg", output);
    catch e
        @warn e
    end
;using CairoMakie; CairoMakie.activate!(); ; output = include("./snippets/makie//018.jl");     display(output);
    try 
        save("./tmp/CairoMakie_018.png", output); 
        save("./tmp/CairoMakie_018.svg", output);
    catch e
        @warn e
    end
;using CairoMakie; CairoMakie.activate!(); ; output = include("./snippets/makie//019.jl");     display(output);
    try 
        save("./tmp/CairoMakie_019.png", output); 
        save("./tmp/CairoMakie_019.svg", output);
    catch e
        @warn e
    end
;using CairoMakie; CairoMakie.activate!(); ; output = include("./snippets/makie//020.jl");     display(output);
    try 
        save("./tmp/CairoMakie_020.png", output); 
        save("./tmp/CairoMakie_020.svg", output);
    catch e
        @warn e
    end

using GLMakie; GLMakie.activate!(); ; output = include("./snippets/makie//001.jl");     display(output);
    try 
        save("./tmp/GLMakie_001.png", output); 
        save("./tmp/GLMakie_001.svg", output);
    catch e
        @warn e
    end
;using GLMakie; GLMakie.activate!(); ; output = include("./snippets/makie//002.jl");     display(output);
    try 
        save("./tmp/GLMakie_002.png", output); 
        save("./tmp/GLMakie_002.svg", output);
    catch e
        @warn e
    end
;using GLMakie; GLMakie.activate!(); ; output = include("./snippets/makie//003.jl");     display(output);
    try 
        save("./tmp/GLMakie_003.png", output); 
        save("./tmp/GLMakie_003.svg", output);
    catch e
        @warn e
    end
;using GLMakie; GLMakie.activate!(); ; output = include("./snippets/makie//004.jl");     display(output);
    try 
        save("./tmp/GLMakie_004.png", output); 
        save("./tmp/GLMakie_004.svg", output);
    catch e
        @warn e
    end
;using GLMakie; GLMakie.activate!(); ; output = include("./snippets/makie//005.jl");     display(output);
    try 
        save("./tmp/GLMakie_005.png", output); 
        save("./tmp/GLMakie_005.svg", output);
    catch e
        @warn e
    end
;using GLMakie; GLMakie.activate!(); ; output = include("./snippets/makie//006.jl");     display(output);
    try 
        save("./tmp/GLMakie_006.png", output); 
        save("./tmp/GLMakie_006.svg", output);
    catch e
        @warn e
    end
;using GLMakie; GLMakie.activate!(); ; output = include("./snippets/makie//007.jl");     display(output);
    try 
        save("./tmp/GLMakie_007.png", output); 
        save("./tmp/GLMakie_007.svg", output);
    catch e
        @warn e
    end
;using GLMakie; GLMakie.activate!(); ; output = include("./snippets/makie//008.jl");     display(output);
    try 
        save("./tmp/GLMakie_008.png", output); 
        save("./tmp/GLMakie_008.svg", output);
    catch e
        @warn e
    end
;using GLMakie; GLMakie.activate!(); ; output = include("./snippets/makie//009.jl");     display(output);
    try 
        save("./tmp/GLMakie_009.png", output); 
        save("./tmp/GLMakie_009.svg", output);
    catch e
        @warn e
    end
;using GLMakie; GLMakie.activate!(); ; output = include("./snippets/makie//010.jl");     display(output);
    try 
        save("./tmp/GLMakie_010.png", output); 
        save("./tmp/GLMakie_010.svg", output);
    catch e
        @warn e
    end
;using GLMakie; GLMakie.activate!(); ; output = include("./snippets/makie//011.jl");     display(output);
    try 
        save("./tmp/GLMakie_011.png", output); 
        save("./tmp/GLMakie_011.svg", output);
    catch e
        @warn e
    end
;using GLMakie; GLMakie.activate!(); ; output = include("./snippets/makie//012.jl");     display(output);
    try 
        save("./tmp/GLMakie_012.png", output); 
        save("./tmp/GLMakie_012.svg", output);
    catch e
        @warn e
    end
;using GLMakie; GLMakie.activate!(); ; output = include("./snippets/makie//013.jl");     display(output);
    try 
        save("./tmp/GLMakie_013.png", output); 
        save("./tmp/GLMakie_013.svg", output);
    catch e
        @warn e
    end
;using GLMakie; GLMakie.activate!(); ; output = include("./snippets/makie//014.jl");     display(output);
    try 
        save("./tmp/GLMakie_014.png", output); 
        save("./tmp/GLMakie_014.svg", output);
    catch e
        @warn e
    end
;using GLMakie; GLMakie.activate!(); ; output = include("./snippets/makie//015.jl");     display(output);
    try 
        save("./tmp/GLMakie_015.png", output); 
        save("./tmp/GLMakie_015.svg", output);
    catch e
        @warn e
    end
;using GLMakie; GLMakie.activate!(); ; output = include("./snippets/makie//016.jl");     display(output);
    try 
        save("./tmp/GLMakie_016.png", output); 
        save("./tmp/GLMakie_016.svg", output);
    catch e
        @warn e
    end
;using GLMakie; GLMakie.activate!(); ; output = include("./snippets/makie//017.jl");     display(output);
    try 
        save("./tmp/GLMakie_017.png", output); 
        save("./tmp/GLMakie_017.svg", output);
    catch e
        @warn e
    end
;using GLMakie; GLMakie.activate!(); ; output = include("./snippets/makie//018.jl");     display(output);
    try 
        save("./tmp/GLMakie_018.png", output); 
        save("./tmp/GLMakie_018.svg", output);
    catch e
        @warn e
    end
;using GLMakie; GLMakie.activate!(); ; output = include("./snippets/makie//019.jl");     display(output);
    try 
        save("./tmp/GLMakie_019.png", output); 
        save("./tmp/GLMakie_019.svg", output);
    catch e
        @warn e
    end
;using GLMakie; GLMakie.activate!(); ; output = include("./snippets/makie//020.jl");     display(output);
    try 
        save("./tmp/GLMakie_020.png", output); 
        save("./tmp/GLMakie_020.svg", output);
    catch e
        @warn e
    end

