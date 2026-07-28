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
            }
        end
    }
}
