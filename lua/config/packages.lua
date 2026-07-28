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

return {
    {
        src = 'https://github.com/ThorstenRhau/token',
        config = 'colorscheme token',
    },
}
