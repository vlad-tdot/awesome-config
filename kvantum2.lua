local helpers  = require("lain.helpers")
local wibox    = require("wibox")
local open     = io.open
local tonumber = tonumber

-- wifi link info
-- kvantum.wifi

local function wifi(args)
    local wifi	   = {} --{ widget2 = wibox.widget.textbox() }
    local args	   = args or {}
    local timeout  = args.timeout or 2
    local wififile = args.wififile or "/proc/net/wireless"
    local settings = args.settings or function() end
	
--    print("!!!!!!!!!!!!!!!!!!!" .. wififile)
    function wifi.update()
	local f = open(wififile)
	local wcontent
	wifi_link = "--"
	if f then
	    wcontent = f:read("*all")
	    f:close()
	end

	local pattern1 = "( %d+%.)"
	local pattern2 = "(%d+)"

	local inter = wcontent:match(pattern1)
	if inter then
	    wifi_link = inter:match(pattern2)
	end
	print(wifi_link)
--	widget2 = wifi.widget2
	settings()
    end
	
    helpers.newtimer("wifi", timeout, wifi.update)
    
    return wifi_link

end -- function wifi

return wifi

