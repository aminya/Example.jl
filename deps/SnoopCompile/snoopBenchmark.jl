using SnoopCompile

println("tests infer benchmark")

@snoopi_bench BotConfig("Example", os = ["windows", "linux"])
