local commons = require 'lib.commons'

local is_callable = commons.is_callable
local merge_arrays = commons.merge_arrays

packages = require 'config.packages'

for _, p_set in ipairs(packages) do
    local status, result = pcall(vim.pack.add, p_set)
    if not status then
        print(result)
    else
        for _, p in ipairs(p_set) do
            if is_callable(p.config) then
                p.config()
            elseif type(p.config) == 'string' then
                vim.cmd(p.config)
            end
        end
    end
end
