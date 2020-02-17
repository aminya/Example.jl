# precompile_enclusre (don't edit the following!)
should_precompile =     true
ismultios = true
@static if !should_precompile
        # nothing
elseif !ismultios
    include("../deps/SnoopCompile/precompile/precompile_Example.jl")
    _precompile_()
elseif Sys.iswindows()
    include("../deps/SnoopCompile/precompile/windows/precompile_Example.jl")
    _precompile_()
elseif Sys.islinux()
    include("../deps/SnoopCompile/precompile/linux/precompile_Example.jl")
    _precompile_()

end # precompile_enclusure
