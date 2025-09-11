local M = {}

local icon = "󰌌 "

function M.get_widget()
  local map_name
  if vim.opt.iminsert:get() > 0 and vim.b.keymap_name then
    map_name = vim.b.keymap_name
  else
    map_name = "en"
  end
  return icon .. map_name
end

return M
