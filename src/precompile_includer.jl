should_precompile = true


# Don't edit the following! Instead change the script for @snoopi_bot.
ismultios = true
ismultiversion = false
# precompile_enclosure
@static if !should_precompile
    # nothing
elseif !ismultios && !ismultiversion
    include("../deps/SnoopCompile/precompile/precompile_Example.jl")
    _precompile_()
else
    @static if Sys.iswindows()
        include("../deps/SnoopCompile/precompile/windows/precompile_Example.jl")
        _precompile_()
    elseif Sys.islinux()
        include("../deps/SnoopCompile/precompile/linux/precompile_Example.jl")
        _precompile_()
    else
        include("../deps/SnoopCompile/precompile/linux/precompile_Example.jl")
        _precompile_()
    end

end # precompile_enclosure
