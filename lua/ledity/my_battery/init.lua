local M = {}

local icons = require("ledity.my_battery.icons")

local battery = require("ledity.my_battery.battery")
if not battery.found_bat then
  function M.get_widget()
    return ""
  end

  return M
end

function M:get_widget()
  local percents = math.ceil(battery.get_charge() / battery.get_full_charge() * 100)
  local status = icons.get_icon(battery.is_charging(), percents)
  return status .. percents .. "%%"
end

return M
