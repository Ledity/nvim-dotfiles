package.path = package.path .. ";" .. os.getenv("HOME") .. ".config/nvim/lua"
local my_bat = require("ledity.my_battery")
local my_kmp = require("ledity.my_keymap")

local lualine_opts = {
  sections = {
    lualine_a = {
      "mode",
      function()
        return my_kmp.get_widget()
      end,
    },
    lualine_z = {
      function()
        return my_bat.get_widget()
      end,
      {
        "datetime",
        style = "󱑎 %H:%M",
      },
    },
  },
}

local plugins = {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    opts = lualine_opts,
  },
}

return plugins
