-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local o = vim.opt

o.keymap = "russian-jcukenwin"
o.iminsert = 0
o.imsearch = 0
o.langmap =
  "ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"

o.shiftwidth = 4
o.tabstop = 4

if vim.g.neovide then
  o.guifont = "FiraCode Nerd Font:h9.5"
end
