local keymaps = require 'config.keymaps'

for _, v in ipairs(keymaps) do
    vim.keymap.set(v[1], v[2], v[3], v[4])
end

