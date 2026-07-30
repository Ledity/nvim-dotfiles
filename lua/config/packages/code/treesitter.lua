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
        'https://github.com/windwp/nvim-ts-autotag'
    }
}
