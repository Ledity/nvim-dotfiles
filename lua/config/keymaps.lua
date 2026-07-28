local merge_arrays = require('lib.commons').merge_arrays

vim.g.mapleader = ' '

-- WINDOW
local window_keymaps = {
    { 'n', '<leader>w-', function() vim.cmd('resize -2') end, { desc = 'Decrease this window\'s height' } },
    { 'n', '<leader>w+', function() vim.cmd('resize +2') end, { desc = 'Increase this window\'s height' } },
    { 'n', '<leader>w<', function() vim.cmd('vertical resize -5') end, { desc = 'Decrease this window\'s width' } },
    { 'n', '<leader>w>', function() vim.cmd('vertical resize +5') end, { desc = 'Increase this window\'s width' } },
    { 'n', '<leader>wv', vim.cmd.vnew, { desc = 'Split the window vertically' } },
    { 'n', '<leader>ws', vim.cmd.new, { desc = 'Split the window horizontally' } },
}

for _, action in ipairs { 'c', 'h', 'j', 'k', 'l', 'H', 'J', 'K', 'L', 'o', 'p', 'q', 'w', '=' } do
    table.insert(window_keymaps, { 'n', '<leader>w' .. action, '<C-w>' .. action })
end

-- TABS
local tab_keymaps = {
    { 'n', '<leader>tn', vim.cmd.tabnew, { desc = 'Open new tab' } },
    { 'n', '<leader>tq', vim.cmd.tabclose, { desc = 'Close this tab' } },
    { 'n', '<leader>th', vim.cmd.tabfirst, { desc = 'Switch to the first tab' } },
    { 'n', '<leader>tj', vim.cmd.tabnext, { desc = 'Switch to the next tab' } },
    { 'n', '<leader>tk', vim.cmd.tabprevious, { desc = 'Switch to the previous tab' } },
    { 'n', '<leader>tl', vim.cmd.tablast, { desc = 'Switch to the last tab' } },
}

-- BUFFERS
local buffer_keymaps = {
    { 'n', '<C-h>', vim.cmd.bfirst, { desc = 'Switch to the first buffer' } },
    { 'n', '<C-j>', vim.cmd.bnext, { desc = 'Switch to the next buffer' } },
    { 'n', '<C-k>', vim.cmd.bprevious, { desc = 'Switch to the previous buffer' } },
    { 'n', '<C-l>', vim.cmd.blast, { desc = 'Switch to the last buffer' } },
}

local keymaps = merge_arrays(window_keymaps, tab_keymaps, buffer_keymaps)

return keymaps
