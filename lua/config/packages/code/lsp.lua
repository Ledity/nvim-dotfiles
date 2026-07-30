local kmaps = require('lib.keymaps.commons')
local nmap = kmaps.nmap
local imap = kmaps.imap

return {
    {
        src = 'https://github.com/neovim/nvim-lspconfig',
        config = function()
            local servers = {
                'jdtls',
                'kotlin_lsp',
                'bashls',
                'fish_lsp',
                'groovyls',
                'lua_ls',
                'rust_analyzer',
                'gopls',
                'tinymist',
            }
            for _, server in ipairs(servers) do
                local ok, config = pcall(require, 'config.lsp' .. server)
                if ok then
                    vim.lsp.config(server, config)
                end
                vim.lsp.enable(server)
            end

            nmap('<C-space>', vim.diagnostic.open_float)
            imap('<M-w>', vim.diagnostic.open_float)
        end
    },
}
