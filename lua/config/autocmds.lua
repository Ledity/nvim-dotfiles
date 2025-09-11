-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local AT_FILE_READ = { "BufReadPost", "FileReadPost", "BufNewFile" }
local FILETYPE = { "FileType" }

local my_augroup_prefix = "ledity_"

local function augroup(name)
  return vim.api.nvim_create_augroup(my_augroup_prefix .. name, { clear = true })
end

local tmux_conf = augroup("tmux_conf")

vim.api.nvim_create_autocmd(AT_FILE_READ, {
  group = tmux_conf,
  desc = "Enable syntax highlighting for all tmux files",
  pattern = "*/.config/tmux/*.conf",
  callback = function()
    vim.o.filetype = "tmux"
  end,
})

local lua_ls = augroup("lua_ls")

vim.api.nvim_create_autocmd(AT_FILE_READ, {
  group = lua_ls,
  desc = "Set shift width for lua files corresponding to lua_ls defaults",
  pattern = "*.lua",
  callback = function()
    vim.bo.shiftwidth = 2
    vim.bo.tabstop = 2
  end,
})

local kotlin_autoformat = augroup("kotlin_autoformat")

vim.api.nvim_create_autocmd(FILETYPE, {
  group = kotlin_autoformat,
  desc = "Disable autoformat for Kotlin",
  pattern = "kotlin",
  callback = function()
    vim.b.autoformat = false
  end,
})
