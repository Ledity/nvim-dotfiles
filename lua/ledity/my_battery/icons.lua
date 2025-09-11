local discharging = { "󰂎 ", "󰁺 ", "󰁻 ", "󰁼 ", "󰁽 ", "󰁾 ", "󰂀 ", "󰂁 ", "󰂂 ", "󰁹 " }
local charging = { "󰢟 ", "󰂆 ", "󰂇 ", "󰂈 ", "󰢝 ", "󰂉 ", "󰢞 ", "󰂊 ", "󰂋 ", "󰂅 " }
local unknown = "󰂑 "

local M = {}

function M.get_icon(is_charging, percents)
  local source
  if is_charging == false then
    source = discharging
  elseif is_charging == true then
    source = charging
  else
    return unknown
  end

  if percents < 0 then
    return source[1]
  elseif percents > 100 then
    return source[11]
  end

  local index = 1 + math.floor(percents / 10)
  return source[index]
end

return M
