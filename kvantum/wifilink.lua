function wifilink()
--table = {}
local wfile = io.open("/proc/net/wireless","r")
--local wfile = io.open("wireless","r")
local wcontent = wfile:read("*all")
wfile:close()

--print (wcontent)
--for status, link, level, noise in string.gmatch(wcontent, "( %d+) +(%d+)") do
--for link, rest in string.gmatch(wcontent, "( %d+).") do end
local pattern = "( %d+%.)"
local patternb = "(%d+)"
local link = (wcontent:match(pattern)):match(patternb)
--raw = wcontent:match(pattern)
--link = raw:match(patternb)
--print(link)
return link
--end

end -- function wifilink

--wifilink()
