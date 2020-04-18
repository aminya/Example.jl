using Test, Example


@static if Sys.iswindows()
  @test hello("Julia") == "Hello, Julia"

elseif Sys.islinux()
  @test domath(2.0) ≈ 7.0
else
  @test multiply(2) == 10
end
