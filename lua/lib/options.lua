local opts = require 'config.options'

for k, v in pairs(opts) do
    vim.o[k] = v
end
