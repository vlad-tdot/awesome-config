--local helpers  = require("lain.helpers")
--local wibox    = require("wibox")
--local open     = io.open
--local tonumber = tonumber


function wifilink()
local wfile = io.open("wireless","r")
--local wfile = io.open("/proc/net/wireless","r")
local wcontent
if wfile then
	wcontent = wfile:read("*all")
	wfile:close()
end

local pattern = " (%d+)%."
local pattern1 = "( %d+%.)"
local pattern2 = "(%d+)"
local link = "--"

local inter = wcontent:match(pattern)
print (inter)
if inter then
	link = inter:match(pattern2)
end

return link

end -- function wifilink

