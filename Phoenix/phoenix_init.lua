-- set both require-paths
local thisdir = ...
package.path = os.getenv("HOME") .. "/.phoenix/?.lua;" .. package.path -- user configs
package.path = thisdir .. "/?.lua;" .. package.path                    -- built-in configs

-- welcome user
-- __api.alert_show("Phoenix config loaded", 1.5)

local function init()
  local phoenix = require("phoenix")
  phoenix.quit()
end

-- load user's config
local ok, error = pcall(init)

-- report error in user's config
if not ok then
  __api.alert_show(error, 5)
end


-- local alert = require("alert")
-- alert.show("hello")
-- alert.show("foo", 0.5)


-- require("menu")
-- print("done")


















-- local application = require("application")

-- for i, app in pairs(application.running_applications()) do
--   print(app)
--   print(app.pid)
--   print(app:title())
-- end


-- local hotkey = require("hotkey")
-- local pathwatcher = require("pathwatcher")

-- local m = nil

-- hotkey.new({"cmd", "shift"}, "a", function()
--     m = pathwatcher.new("/Users/sdegutis/projects/phoenix/Phoenix", function()
--                           print("here!")
--     end)
-- end):enable()

-- hotkey.new({"cmd", "shift"}, "b", function()
--     m:start()
-- end):enable()

-- hotkey.new({"cmd", "shift"}, "c", function()
--     m:stop()
-- end):enable()

-- print("ready")



-- -- print(__api)
-- -- print(__api.app_running_apps)

-- -- for k, v in pairs(__api.app_running_apps()) do
-- --    print(k, __api.app_title(v))
-- -- end

__api.menu_icon_show()

-- -- lol = __api.path_watcher_start("/Users/sdegutis/projects/phoenix", function()
-- --                             print(lol)
-- --                             __api.path_watcher_stop(lol)
-- --                                                              end)



-- -- __api.alert_show("hi!", 1)



-- for k, pid in pairs(__api.app_running_apps()) do
--    local x = __api.app_get_windows(pid)
--    print(__api.app_title(pid))
--    for k, v in pairs(x) do
--       print(k, v)
--    end
-- end

-- collectgarbage()



-- __api.hotkey_setup(function(uid)
--                       local w = __api.window_get_focused_window()
--                       print(__api.window_role(w))
--                    end)
-- __api.hotkey_register(true, true, true, false, "s")


-- print("done")

-- -- local x, y = __api.mouse_get()

-- -- __api.hotkey_setup(function(uid)
-- --                       __api.mouse_set(x, y)
-- --                       print("got: " .. tostring(uid))
-- --                    end)

-- -- local uid, carbonkey = __api.hotkey_register(true, true, true, false, "s")

-- -- print(uid, carbonkey)
