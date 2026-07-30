return {
    {
        src = 'https://github.com/numToStr/Comment.nvim',
        config = function()
            require('Comment').setup {
                mapping = {
                    basic = true,
                    extra = true
                }
            }
        end
    }
}
