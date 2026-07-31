local commons = require('lib.commons')
local random_file = commons.random_file
local file_to_lines = commons.file_to_lines

return {
    'https://github.com/nvim-tree/nvim-web-devicons',
    {
        src = 'https://github.com/nvim-lualine/lualine.nvim',
        config = function()
            require('lualine').setup {
                options = {
                    component_separators = '|',
                    section_separators = '',
                }
            }
        end
    },
    {
        src = 'https://github.com/akinsho/bufferline.nvim',
        config = function()
            require('bufferline').setup {
                options = {
                    custom_filter = function(buf_number, buf_numbers)
                        if vim.fn.bufname(buf_number) == 'homecoming://Dashboard' then
                            return false
                        end

                        return true
                    end,
                },
            }
        end
    },
    {
        src = 'https://github.com/vzze/cmdline.nvim',
        config = function()
            require('cmdline').setup {}
        end
    },
    {
        src = 'https://github.com/leo-alvarenga/homecoming.nvim',
        config = function()
            local splash_file = random_file(vim.fn.stdpath('config') .. '/splash/')
            local splash = file_to_lines(splash_file)
            require('homecoming-nvim').setup {
                header = splash,
            }
        end
    }
}
