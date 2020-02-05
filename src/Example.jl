module Example
export hello, domath

@static if Sys.iswindows()
  hello(who::String) = "Hello, $who"

  elseif Sys.islinux()
    domath(x::Number) = x + 5

  end

# @static if Sys.iswindows()
#     include("windows/MatLang_precompiles.jl")
#       _precompile_()
#
#   elseif Sys.islinux()
#     include("linux/MatLang_precompiles.jl")
#       _precompile_()
#
#   end

# precompile
# include("../deps/SnoopCompile/precompile/precompile_Example.jl")
# _precompile_()

end
