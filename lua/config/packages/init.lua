--[[
```
{
    'https://github.com/foo/bar',

    { src = 'https://github.com/foo/bar' },

    {
        src = 'https://github.com/foo/bar',
        config = 'foo_cmd' -- vim.cmd('foo_cmd'),
    },

    {
        src = 'https://github.com/foo/bar',
        config = function()
            vim.opt.foo = 'bar'
            vim.cmd('foo_cmd')
        end,
    },
}
```
]]

local merge_arrays = require('lib.commons').merge_arrays

return merge_arrays(
    require 'config.packages.colorscheme',
    require 'config.packages.dired',
    require 'config.packages.telescope'
)

