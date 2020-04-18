using SnoopCompile

# using runtests:
@snoopi_bot BotConfig("Example", os = ["windows", "linux"], else_os = "macos")
