local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")
local gears = require("gears")

local markup = lain.util.markup

mycustom                                     = {}
mycustom.confdir                                   = os.getenv("HOME") .. "/.config/awesome/themes/multicolor"
mycustom.widget_weather                            = mycustom.confdir .. "/icons/dish.png"
mycustom.font									   = "xos4 Terminus 10"


-- Weather
weathericon = wibox.widget.imagebox(mycustom.widget_weather)
mycustom.weather = lain.widget.weather({
    city_id = 6167865, -- Toronto
    notification_preset = { font = "xos4 Terminus 10", fg = "#aaaaaa" },
    weather_na_markup = markup.fontfg(mycustom.font, "#eca4c4", "N/A "),
    settings = function()
        descr = weather_now["weather"][1]["description"]:lower()
        units = math.floor(weather_now["main"]["temp"])
        widget:set_markup(markup.fontfg(mycustom.font, "#eca4c4", descr .. " @ " .. units .. "°C "))
    end
})

-- return mycustom
