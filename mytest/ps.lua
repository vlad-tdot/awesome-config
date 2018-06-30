local wibox = require("wibox")
local awful = require("awful")

sleepMessage = wibox.widget.textbox()
-- DBus (Command are sent to DBus, which prevents Awesome from freezing)
sleepTimerDbus = timer ({timeout = 5})
sleepTimerDbus:connect_signal ("timeout",
  function ()
      awful.util.spawn_with_shell("dbus-send --session --dest=org.naquadah.awesome.awful /com/console/sleep com.console.sleep.sleepMessage string:$(~/pstop.sh)" )
  end)
sleepTimerDbus:start()

dbus.request_name("session", "com.console.sleep")
dbus.add_match("session", "interface='com.console.sleep', member='sleepMessage' " )
dbus.connect_signal("com.console.sleep",
  function (...)
      local data = {...}
      local dbustext = data[2]
      sleepMessage:set_text(dbustext)
end)


