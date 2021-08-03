#/bin/sh

export PRECOMPILE_PLOTS_GR=true
export PRECOMPILE_PLOTS_PGF=true
export PRECOMPILE_PLOTS_PYPLOT=false
export PRECOMPILE_MAKIE_GL=true
export PRECOMPILE_MAKIE_CAIRO=true
export PRECOMPILE_MAKIE_WGL=true

julia restore.jl
julia -e 'import Pkg; Pkg.update()'
julia precompile.jl
julia sysimage.jl