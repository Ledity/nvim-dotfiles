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
