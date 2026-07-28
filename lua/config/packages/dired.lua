return {
    'https://github.com/MunifTanjim/nui.nvim',
    {
        src = 'https://github.com/X3eRo0/dired.nvim',
        config = function() 
            require('dired').setup({
                show_hidden = true,
                show_icons = true,
            })
        end
    }
}
