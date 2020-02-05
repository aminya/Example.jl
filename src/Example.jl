module Example
export hello, domath

@static if Sys.iswindows()
  hello(who::String) = "Hello, $who"

elseif Sys.islinux()
  domath(x::Number) = x + 5

end


@static if Sys.iswindows()
  include("../deps/SnoopCompile/precompile/windows/precompile_Example.jl")
  _precompile_()

elseif Sys.islinux()
  include("../deps/SnoopCompile/precompile/linux/precompile_Example.jl")
  _precompile_()

end


end
