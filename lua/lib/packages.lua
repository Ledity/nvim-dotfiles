local is_callable = require 'lib.commons'.is_callable

local packages = require 'config.packages'

vim.pack.add(packages)

for _, p in ipairs(packages) do
    if is_callable(p.config) then
        p.config()
    elseif type(p.config) == 'string' then
        vim.cmd(p.config)
    end
end
