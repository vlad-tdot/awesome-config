package = "kvantum"
version = "git"
source = {
   url = "https://github.com/.........",
   tag = "git"
}
description = {
   summary = "test",
   detailed = [[
test
    ]],
   homepage = "https://github.com/.............",
   license = "GPL v2"
}
dependencies = {
   "lua >= 5.1",
   "awesome >= 4.0",
   "curl"
}
supported_platforms = { "linux" }
build = {
   type = "builtin",
   modules = { kvantum = "init.lua" }
}
