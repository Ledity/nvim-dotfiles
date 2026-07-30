return {
    {
        src = 'https://github.com/nvim-treesitter/nvim-treesitter',
        config = function()
            require('nvim-treesitter').install {
                'xml',
                'html',
                'lua',
                'java',
                'kotlin',
                'rust',
                'go',
                'bash',
                'fish'
            }
        end
    },
    {
        src = 'https://github.com/windwp/nvim-ts-autotag',
        config = function()
            require('nvim-ts-autotag').setup {
                opts = {
                    enable_close = true,
                    enable_rename = true,
                    enable_close_on_slash = true
                }
            }
        end
    },
}
