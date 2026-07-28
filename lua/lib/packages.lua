local commons = require 'lib.commons'

local is_callable = commons.is_callable
local merge_arrays = commons.merge_arrays

packages = require 'config.packages'

vim.pack.add(packages)

for _, p in ipairs(packages) do
    if is_callable(p.config) then
        p.config()
    elseif type(p.config) == 'string' then
        vim.cmd(p.config)
    end
end
