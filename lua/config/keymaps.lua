local merge_arrays = require('lib.commons').merge_arrays

vim.g.mapleader = ' '

-- WINDOW
local window_keymaps = {
    { 'n', '<leader>w-', function() vim.cmd('resize -2') end },
    { 'n', '<leader>w+', function() vim.cmd('resize +2') end },
    { 'n', '<leader>w<', function() vim.cmd('vertical resize -5') end },
    { 'n', '<leader>w>', function() vim.cmd('vertical resize +5') end },
    { 'n', '<leader>wt', '<c-w>wT' },
    { 'n', '<leader>wv', vim.cmd.vnew },
    { 'n', '<leader>ws', vim.cmd.new },
}

for _, action in ipairs { 'c', 'h', 'j', 'k', 'l', 'H', 'J', 'K', 'L', 'o', 'p', 'q', 'w', '=' } do
    table.insert(window_keymaps, { 'n', '<leader>w' .. action, '<C-w>'..action })
end

-- TABS
local tab_keymaps = {
    { 'n', '<leader>tn', vim.cmd.tabnew },
    { 'n', '<leader>tq', vim.cmd.tabclose },
    { 'n', '<leader>th', vim.cmd.tabfirst },
    { 'n', '<leader>tj', vim.cmd.tabnext },
    { 'n', '<leader>tk', vim.cmd.tabprevious },
    { 'n', '<leader>tl', vim.cmd.tablast },
}

-- BUFFERS
local buffer_keymaps = {
    { 'n', '<leader>h', vim.cmd.bfirst },
    { 'n', '<leader>j', vim.cmd.bnext },
    { 'n', '<leader>k', vim.cmd.bprevious },
    { 'n', '<leader>l', vim.cmd.blast },
}

local keymaps = merge_arrays(window_keymaps, tab_keymaps, buffer_keymaps)

return keymaps
