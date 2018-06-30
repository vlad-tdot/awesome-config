
--[[
                                    
     Blackburn Awesome WM theme 3.0 
     github.com/copycat-killer      
                                    
--]]

local gears   = require("gears")
local lain    = require("lain")
local awful   = require("awful")
local wibox   = require("wibox")
local os      = { getenv = os.getenv }

-- MINE!!!!
--local kvantum = require("kvantum2")
--local wifi    = require("kvantum.wifi")


local theme                                     = {}
theme.dir                                       = os.getenv("HOME") .. "/.config/awesome/themes/blackburn"
theme.wallpaper                                 = theme.dir .. "/wall.png"
theme.font					= "BPmono 10"
--theme.font                                      = "Bitstream Vera Sans Mono 9"
--theme.font                                      = "Misc Tamsyn 10.5"
theme.taglist_font                              = "Icons 10"
theme.fg_normal                                 = "#D7D7D7"
theme.fg_focus                                  = "#F6784F"
theme.bg_normal                                 = "#060606"
theme.bg_focus                                  = "#777777"
--theme.bg_focus                                  = "#060606"
theme.fg_urgent                                 = "#CC9393"
theme.bg_urgent                                 = "#2A1F1E"
theme.border_width                              = 1
theme.border_normal                             = "#444444"
--theme.border_normal                             = "#0E0E0E"
theme.border_focus                              = "#F79372"
theme.taglist_fg_focus                          = "#F6784F"
theme.taglist_bg_focus                          = "#060606"
theme.tasklist_fg_focus                         = "#F6784F"
theme.tasklist_bg_focus                         = "#060606"
theme.menu_height                               = 16
theme.menu_width                                = 130
theme.menu_submenu_icon                         = theme.dir .. "/icons/submenu.png"
theme.awesome_icon                              = theme.dir .."/icons/awesome.png"
theme.taglist_squares_sel                       = theme.dir .. "/icons/square_sel.png"
theme.taglist_squares_unsel                     = theme.dir .. "/icons/square_unsel.png"
theme.layout_tile                               = theme.dir .. "/icons/tile.png"
theme.layout_tileleft                           = theme.dir .. "/icons/tileleft.png"
theme.layout_tilebottom                         = theme.dir .. "/icons/tilebottom.png"
theme.layout_tiletop                            = theme.dir .. "/icons/tiletop.png"
theme.layout_fairv                              = theme.dir .. "/icons/fairv.png"
theme.layout_fairh                              = theme.dir .. "/icons/fairh.png"
theme.layout_spiral                             = theme.dir .. "/icons/spiral.png"
theme.layout_dwindle                            = theme.dir .. "/icons/dwindle.png"
theme.layout_max                                = theme.dir .. "/icons/max.png"
theme.layout_fullscreen                         = theme.dir .. "/icons/fullscreen.png"
theme.layout_magnifier                          = theme.dir .. "/icons/magnifier.png"
theme.layout_floating                           = theme.dir .. "/icons/floating.png"
theme.tasklist_plain_task_name                  = true
theme.tasklist_disable_icon                     = true
theme.useless_gap                               = 0
theme.titlebar_close_button_focus               = theme.dir .. "/icons/titlebar/close_focus.png"
theme.titlebar_close_button_normal              = theme.dir .. "/icons/titlebar/close_normal.png"
theme.titlebar_ontop_button_focus_active        = theme.dir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active       = theme.dir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive      = theme.dir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive     = theme.dir .. "/icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_sticky_button_focus_active       = theme.dir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active      = theme.dir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive     = theme.dir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive    = theme.dir .. "/icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_floating_button_focus_active     = theme.dir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active    = theme.dir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive   = theme.dir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive  = theme.dir .. "/icons/titlebar/floating_normal_inactive.png"
theme.titlebar_maximized_button_focus_active    = theme.dir .. "/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = theme.dir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = theme.dir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme.dir .. "/icons/titlebar/maximized_normal_inactive.png"

theme.bat_dir					= "/usr/share/icons/Humanity-Dark/status/48/gpm-"
theme.bat_ext					= ".svg"

-- Battery Icons
theme.bat000charging                            = theme.bat_dir .. "battery-000-charging" .. theme.bat_ext
theme.bat000                                    = theme.bat_dir .. "battery-000" .. theme.bat_ext
theme.bat020charging                            = theme.bat_dir .. "battery-020-charging" .. theme.bat_ext
theme.bat020                                    = theme.bat_dir .. "battery-020" .. theme.bat_ext
theme.bat040charging                            = theme.bat_dir .. "battery-040-charging" .. theme.bat_ext
theme.bat040                                    = theme.bat_dir .. "battery-040" .. theme.bat_ext
theme.bat060charging                            = theme.bat_dir .. "battery-060-charging" .. theme.bat_ext
theme.bat060                                    = theme.bat_dir .. "battery-060" .. theme.bat_ext
theme.bat080charging                            = theme.bat_dir .. "battery-080-charging" .. theme.bat_ext
theme.bat080                                    = theme.bat_dir .. "battery-080" .. theme.bat_ext
theme.bat100charging                            = theme.bat_dir .. "battery-100-charging" .. theme.bat_ext
theme.bat100                                    = theme.bat_dir .. "battery-100" .. theme.bat_ext
theme.batcharged                                = theme.bat_dir .. "battery-charged" .. theme.bat_ext


-- Volume Icons
--theme.vol_dir					= "/usr/share/icons/matefaenza/status/24/notification-audio-"
--theme.vol_dir					= "/usr/share/icons/matefaenzadark/status/32/audio-"
theme.vol_dir					= "/usr/share/icons/matefaenzadark/status/22/audio-"
theme.volhigh                                   = theme.vol_dir .. "volume-high.png"
theme.vollow                                    = theme.vol_dir .. "volume-low.png"
theme.volmed                                    = theme.vol_dir .. "volume-medium.png"
theme.volmutedblocked                           = theme.vol_dir .. "volume-muted-blocked.png"
--theme.volmuted                                  = theme.vol_dir .. "volume-muted.png"
theme.volmuted                                  = theme.vol_dir .. "volume-muted-blocked-panel.png"
theme.voloff                                    = theme.vol_dir .. "volume-off.png"


-- Network Icons
theme.widget_netdown                            = theme.dir .. "/icons/net_down.png"
theme.widget_netup                              = theme.dir .. "/icons/net_up.png"





-- awful.util.tagnames   = { "ƀ", "Ƅ", "Ɗ", "ƈ", "ƙ", "6" }
awful.util.tagnames   = { "1", "2", "3", "4", "5", "6", "7" }

local markup     = lain.util.markup
local separators = lain.util.separators
local gray       = "#9E9C9A"

-- Textclock
-- os.setlocale(os.getenv("LANG")) -- to localize the clock
local clockicon = wibox.widget.imagebox(theme.widget_clock)
local mytextclock = wibox.widget.textclock(markup("#7788af", "%Y.%m.%d %a") .. markup("#de5e1e", " %H:%M "))
mytextclock.font = theme.font
--local mytextclock = wibox.widget.textclock(" %H:%M ")
--mytextclock.font = theme.font

-- Calendar
lain.widget.calendar({
    attach_to = { mytextclock },
    notification_preset = {
        font = "BPmono 10",
        fg   = theme.fg_normal,
        bg   = theme.bg_normal
}})

--[[ Mail IMAP check
-- commented because it needs to be set before use
local mail = lain.widget.imap({
    timeout  = 180,
    server   = "server",
    mail     = "mail",
    password = "keyring get mail",
    notification_preset = { fg = white }
    settings = function()
        mail  = ""
        count = ""

        if mailcount > 0 then
            mail = "Mail "
            count = mailcount .. " "
        end

        widget:set_markup(markup.font(theme.font, markup(gray, mail) .. count))
    end
})
--]]

-- CPU
local cpuicon = wibox.widget.imagebox(theme.widget_cpu)
local cpu = lain.widget.cpu({
    settings = function()
        widget:set_markup(markup.fontfg(theme.font, "#e33a6e", cpu_now.usage .. "% "))
    end
})

-- Memory
local memicon = wibox.widget.imagebox(theme.widget_mem)
local memory = lain.widget.mem({
    settings = function()
        widget:set_markup(markup.fontfg(theme.font, "#e0da37", mem_now.used .. "M "))
    end
})


-- MPD
theme.mpd = lain.widget.mpd({
    settings = function()
        mpd_notification_preset.fg = white
        artist = mpd_now.artist .. " "
        title  = mpd_now.title  .. " "

        if mpd_now.state == "pause" then
            artist = "mpd "
            title  = "paused "
        elseif mpd_now.state == "stop" then
            artist = ""
            title  = ""
        end

        widget:set_markup(markup.font(theme.font, markup(gray, artist) .. title .. " "))
    end
})


-- Systray
theme.systray = wibox.widget.systray({
	opacity = 0.5
})
    

-- /home fs
theme.fs = lain.widget.fs({
    partition = "/home",
    options = "--exclude-type=tmpfs",
    notification_preset = { fg = white, bg = theme.bg_normal, font = "MonospaceTypewriter 8" },
    settings  = function()
        fs_header = ""
        fs_p      = ""

        if tonumber(fs_now.used) >= 90 then
            fs_header = " Hdd "
            fs_p      = fs_now.used
        end
	widget:set_markup(markup.fontfg(theme.font, "#55cc55", fs_now.available_gb .. "g"))
--        widget:set_markup(markup.font(theme.font, markup(gray, fs_header) .. fs_p))
    end
})

-- Battery
local baticon = wibox.widget.imagebox(theme.bat000)
local battooltip = awful.tooltip({
    objects = { baticon },
    margin_leftright = 15,
    margin_topbottom = 12
})
battooltip.wibox.fg = theme.fg_normal
battooltip.textbox.font = theme.font
battooltip.timeout = 0
battooltip:set_shape(function(cr, width, height)
    gears.shape.infobubble(cr, width, height, corner_radius, arrow_size, width - 35)
end)

local bat = lain.widget.bat({
    settings = function()
--        bat_header = " Bat "
--        bat_p      = bat_now.perc .. " "
--	local perc = bat_now.perc ~= "N/A" and bat_now.perc .. "%" or bat_now.perc
	local status = bat_now.status
	local time = bat_now.time
--[[
	if bat_now.ac_status == 1 then
		perc = perc .. " plug"
	end
]]--
	local index, perc = "bat", tonumber(bat_now.perc) or 0
	if perc <= 10 then
            index = index .. "000"
	elseif perc <= 20 then
            index = index .. "020"
	elseif perc <= 40 then
            index = index .. "040"
    	elseif perc <= 60 then
	    index = index .. "060"
	elseif perc <= 80 then
            index = index .. "080"
	elseif perc <= 100 then
            index = index .. "100"
	end

	if bat_now.status == "Charging" then
            index = index .. "charging"
	end
	if bat_now.status == "Unknown" then
	    index = "batcharged"
	end

	baticon:set_image(theme[index])
        widget:set_markup(markup.fontfg(theme.font, theme.fg_normal, perc .. " " .. bat_now.watt .. "W" ))
	battooltip:set_markup(string.format("\n%s%%, %s", perc, bat_now.time))
	end
})

--[[ ALSA volume
theme.volumetext = lain.widget.alsa({
    --togglechannel = "IEC958,3",
    settings = function()
--        header = " Vol "
        vlevel  = volume_now.level

        if volume_now.status == "off" then
            vlevel = vlevel .. "M "
        else
            vlevel = vlevel .. " "
        end

        widget:set_markup(markup.font(theme.font, markup(gray, vlevel) ))
    end
})
--]]

-- ALSA Volume
local volicon = wibox.widget.imagebox()
theme.volume = lain.widget.alsa({
    notification_preset = { font = "Monospace 12", fg = theme.fg_normal },
    settings = function()
	local index, perc = "", tonumber(volume_now.level) or 0
	vlevel  = volume_now.level
	if volume_now.status == "off" then
	    index = "volmuted"
        else
	if perc <= 5 then
            index = "voloff"
        elseif perc <= 25 then
            index = "vollow"
	elseif perc <= 75 then
            index = "volmed"
        else
            index = "volhigh"
	end
    end
    widget:set_markup(markup.font(theme.font, vlevel )) 
    volicon:set_image(theme[index])
  end
})

volicon:buttons(awful.util.table.join (
    awful.button({}, 1, function()
        awful.spawn.with_shell(string.format("%s -e alsamixer", awful.util.terminal))
    end),

    awful.button({}, 2, function()
        awful.spawn(string.format("%s set %s 100%%", theme.volume.cmd, theme.volume.channel))
        theme.volume.notify()
	theme.volumetext.notify()
    end),
    awful.button({}, 3, function()
        awful.spawn(string.format("%s set %s toggle", theme.volume.cmd, theme.volume.togglechannel or theme.volume.channel))
        theme.volume.notify()
	theme.volumetext.notify()
    end),
    
    awful.button({}, 4, function()
        awful.spawn(string.format("%s set %s 1%%+", theme.volume.cmd, theme.volume.channel))
        theme.volume.notify()
	theme.volumetext.notify()
    end),
    awful.button({}, 5, function()
        awful.spawn(string.format("%s set %s 1%%-", theme.volume.cmd, theme.volume.channel))
        theme.volume.notify()
	theme.volumetext.notify()
    end)
))

--Coretemp
--local tempicon = wibox.widget.imagebox(theme.widget_temp)
local temp = lain.widget.temp({
    settings = function()
        widget:set_markup(markup.fontfg(theme.font, "#f1af5f", coretemp_now .. "°C "))
    end
})

-- MY WIFI!!!!!!!!!!
local wifi = lain.widget.wifi({
    settings = function()
	widget:set_markup(markup.fontfg(theme.font, "#dd44dd", wifi_link .. "db"))
    end
})



-- Weather
theme.weather = lain.widget.weather({
    city_id = 6167865, -- Toronto
    notification_preset = { font = "DejaVu Sans Mono 12", fg = theme.fg_normal },
    weather_na_markup = markup.fontfg(theme.font, "#eca4c4", "N/A "),
    settings = function()
        descr = weather_now["weather"][1]["description"]:lower()
        units = math.floor(weather_now["main"]["temp"])
        widget:set_markup( descr .. " " .. units .. "C " )
    end
})


-- Net
local netdownicon = wibox.widget.imagebox(theme.widget_netdown)
local netdowninfo = wibox.widget.textbox()
local netupicon = wibox.widget.imagebox(theme.widget_netup)
local netupinfo = lain.widget.net({
    settings = function()
        if iface ~= "network off" and
              string.match(theme.weather.widget.text, "N/A")
	then
	      theme.weather.update()
	end
	widget:set_markup(markup.fontfg(theme.font, "#e54c62", net_now.sent .. " "))
        netdowninfo:set_markup(markup.fontfg(theme.font, "#87af5f", net_now.received .. " "))
    end
})



-- Separators
local first     = wibox.widget.textbox('<span font="Misc Tamsyn 4"> </span>')
local arrl_pre  = separators.arrow_right("alpha", "#1A1A1A")
local arrl_post = separators.arrow_right("#1A1A1A", "alpha")

local barheight = 18
local barcolor  = gears.color({
    type  = "linear",
    from  = { barheight, 0 },
    to    = { barheight, barheight },
    stops = { {0, "#777777" }, {0.2, "#444444"}, {0.7, "#222222"} }
--    stops = { {0, theme.bg_focus }, {0.8, theme.border_normal}, {1, "#1A1A1A"} }
})
theme.titlebar_bg = barcolor

theme.titlebar_bg_focus = gears.color({
    type  = "linear",
    from  = { barheight, 0 },
    to    = { barheight, barheight },
    stops = { {0, theme.bg_normal}, {0.5, theme.border_normal}, {1, "#492417"} }
})

function theme.at_screen_connect(s)
    -- Quake application
    s.quake = lain.util.quake({ app = awful.util.terminal })

    -- If wallpaper is a function, call it with the screen
    local wallpaper = theme.wallpaper
    if type(wallpaper) == "function" then
        wallpaper = wallpaper(s)
    end
    gears.wallpaper.maximized(wallpaper, s, true)

    -- Tags
    awful.tag(awful.util.tagnames, s, awful.layout.layouts[2])

    -- Systray transparency
--    s.mywibox:wibox.systray.opacity(0)


    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(awful.util.table.join(
                           awful.button({ }, 1, function () awful.layout.inc( 1) end),
                           awful.button({ }, 3, function () awful.layout.inc(-1) end),
                           awful.button({ }, 4, function () awful.layout.inc( 1) end),
                           awful.button({ }, 5, function () awful.layout.inc(-1) end)))
    -- Create a taglist widget
    s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, awful.util.taglist_buttons)

    -- Create a tasklist widget
    s.mytasklist = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, awful.util.tasklist_buttons, { bg_normal = barcolor, bg_focus = barcolor })

    -- Create the wibox
    s.mywibox = awful.wibar({ position = "top", screen = s, height = 18, bg = barcolor })

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            first,
            s.mytaglist,
            arrl_pre,
            s.mylayoutbox,
            arrl_post,
            s.mypromptbox,
            first,
        },
--        s.mytasklist, -- Middle widget
        nil,
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
--            wibox.widget.systray(),
	    theme.systray,
            first,
--            theme.mpd.widget,
            --mail.widget,
            netdownicon,
            netdowninfo,
            netupicon,
            netupinfo.widget,
	    theme.weather.icon,
            theme.weather.widget,
            cpu.widget,
	    memory.widget,
	    theme.fs.widget,
	    --tempicon,
	    wifi,
	    temp,
	    volicon,
            theme.volume.widget,
            baticon,
	    bat,
	    mytextclock,
        },
    }

    -- Create the bottom wibox
    s.mybottomwibox = awful.wibar({ position = "bottom", screen = s, border_width = 0, height = 30, bg = theme.bg_normal, fg = theme.fg_normal })

    -- Add widgets to the bottom wibox
    s.mybottomwibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
        },
	s.mytasklist, -- Middle widget
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            s.mylayoutbox,
        },
    }

end

return theme
