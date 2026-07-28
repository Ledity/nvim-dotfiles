require 'lib.options' 
require 'lib.keymaps' 
require 'lib.packages'

vim.cmd.echo('"aaa: ' .. package.path .. '"')
vim.cmd.echo('"bbb: ' .. (package.searchpath('config.packages', package.path) or 'nil') .. '"')

