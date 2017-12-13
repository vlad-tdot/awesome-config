--local helpers = require("lain.helpers")
helpers = {}

helpers.map_table = {}

function helpers.set_map(element, value)
    helpers.map_table[element] = value
end

local partition = "/"

helpers.set_map(partition, false)

local f = io.open("fsinfo","r")
--if f then
	content = f:read("*all")
	f:close()
--end

fs_info, fs_now  = {}, {}
local fs = { unit  = { ["mb"] = 1024, ["gb"] = 1024^2 }}

--print(fs.unit.mb)


for line in string.gmatch(content,"\n[^\n]+") do
--	print(line)
	local m,s,u,a,p = string.match(line, "(/.-%s).-(%d+).-(%d+).-(%d+).-([%d]+)%%")
	m = m:gsub(" ", "") -- clean target from any whitespace
--	print(m, tonumber(s) / fs.unit["mb"])
--	print(m .. " size_mb", string.format("%.1f", tonumber(s) / fs.unit["mb"]))
	fs_info[m .. " size_mb"]  = string.format("%.1f", tonumber(s) / fs.unit["mb"])
--	print(fs_info[m .. " size_mb"])
	fs_info[m .. " size_gb"]  = string.format("%.1f", tonumber(s) / fs.unit["gb"])
        fs_info[m .. " used_mb"]  = string.format("%.1f", tonumber(u) / fs.unit["mb"])
        fs_info[m .. " used_gb"]  = string.format("%.1f", tonumber(u) / fs.unit["gb"])
        fs_info[m .. " used_p"]   = p
        fs_info[m .. " avail_mb"] = string.format("%.1f", tonumber(a) / fs.unit["mb"])
        fs_info[m .. " avail_gb"] = string.format("%.1f", tonumber(a) / fs.unit["gb"])
        fs_info[m .. " avail_p"]  = string.format("%d", 100 - tonumber(p))
	print(m)	
--	print(#fs_info)
	output = m -- .. " " s -- .. " " .. u .. " " .. a .. " " .. p
--	print(m,s,u,a,p)

end
	for k,v in pairs(fs_info) do
		print(k, v)
	end
