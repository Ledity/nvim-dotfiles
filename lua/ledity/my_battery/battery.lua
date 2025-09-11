local bat_dir = "/sys/class/power_supply/BAT0/"
local charge_path = bat_dir .. "charge_now"
local charge_max_path = bat_dir .. "charge_full"
local status_path = bat_dir .. "status"

local function read_and_close(path, mode)
  local file = io.open(path, "r")
  if not file then
    return nil
  end

  local value = file:read(mode)
  file:close()

  return value
end

local M = { found_bat = true }

-- check if exists
local found_batttery = os.rename(charge_path, charge_path)
if not found_batttery then
  M.found_bat = false
  return M
end

function M.get_charge()
  local charge = read_and_close(charge_path, "*n") or 0
  return charge
end

function M.get_full_charge()
  local charge_max = read_and_close(charge_max_path, "*n") or 100
  return charge_max
end

function M.is_charging()
  local status = read_and_close(status_path, "*l") or "Unknown"

  if status == "Charging" then
    return true
  elseif status == "Discharging" then
    return false
  else
    return nil
  end
end

return M
