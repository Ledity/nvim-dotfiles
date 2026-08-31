local is_termux = require('lib.commons').is_termux

-- blink fails to compile on Termux
if not is_termux() then
    return {
        'https://github.com/saghen/blink.lib',
        {
            src = 'https://github.com/saghen/blink.cmp',
            config = function()
                local cmp = require 'blink.cmp'
                cmp.build():pwait()
                cmp.setup {
                    keymap = {
                        preset = 'enter',
                        ['<C-j>'] = { 'select_next', 'fallback_to_mappings' },
                        ['<C-k>'] = { 'select_prev', 'fallback_to_mappings' },
                    }
                }
            end
        },
    }
else
    return {
        {
            src = 'https://github.com/brianaung/compl.nvim',
            config = function()
                vim.opt.completeopt = { 'menuone', 'noselect', 'noinsert' }
                require('compl').setup {}
            end
        }
    }
end
