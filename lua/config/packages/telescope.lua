local nmap = require('lib.keymaps.commons').nmap

return {
    'https://github.com/nvim-lua/plenary.nvim',
    {
        src = 'https://github.com/nvim-telescope/telescope.nvim',
        config = function()
            local builtin = require 'telescope.builtin'
            local actions = require 'telescope.actions'

            nmap('<leader>ff', builtin.find_files)
            nmap('<leader>fh', builtin.help_tags)
            nmap('<leader>fb', builtin.buffers)
            nmap('<leader>fg', builtin.live_grep)

            require('telescope').setup {
                defaults = {
                    mappings = {
                        i = {
                            ['<C-n>'] = false,
                            ['<C-p>'] = false,

                            ['<C-j>'] = {
                                actions.move_selection_next, type = 'action',
                            },
                            ['<C-k>'] = {
                                actions.move_selection_previous, type = 'action',
                            },
                        },
                    },
                },
            }
        end
    },
}
