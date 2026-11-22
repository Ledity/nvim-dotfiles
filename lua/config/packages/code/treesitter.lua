return {
    {
        src = 'https://github.com/nvim-treesitter/nvim-treesitter',
        config = function()
            require('nvim-treesitter').install {
                'bash',
                'elvish',
                'fish',
                'go',
                'html',
                'java',
                'kotlin',
                'lua',
                'rust',
                'vala',
                'xml',
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
