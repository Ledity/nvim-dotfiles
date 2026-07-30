local merge_arrays = require('lib.commons').merge_arrays

local lsp = require('config.packages.code.lsp')
local completions = require('config.packages.code.completions')
local format = require('config.packages.code.format')

return merge_arrays(lsp, completions, format)
