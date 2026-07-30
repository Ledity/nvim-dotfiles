local kmaps = require('lib.keymaps.commons')
local nmap = kmaps.nmap
local imap = kmaps.imap

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
    {
        src = 'https://github.com/neovim/nvim-lspconfig',
        config = function()
            local servers = { 'jdtls', 'kotlin_lsp', 'bashls', 'fish_lsp', 'groovyls', 'lua_ls', 'rust_analyzer', 'gopls', }
            for _, server in ipairs(servers) do
                local ok, result = pcall(require, 'config.packages.lsp' .. server)
                if ok then
                    vim.lsp.enable(result)
                else
                    vim.lsp.enable(server)
                end
            end

            nmap('<C-space>', vim.diagnostic.open_float)
            imap('<M-w>', vim.diagnostic.open_float)
        end
    },
    {
        src = 'https://github.com/stevearc/conform.nvim',
        config = function()
            local conform = require 'conform'
            conform.setup {
                format_on_save = {
                    -- These options will be passed to conform.format()
                    timeout_ms = 500,
                    lsp_format = "fallback",
                },
            }

            vim.api.nvim_create_user_command("Format", function(args)
                local range = nil
                if args.count ~= -1 then
                    local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
                    range = {
                        start = { args.line1, 0 },
                        ["end"] = { args.line2, end_line:len() },
                    }
                end
                conform.format({ async = true, lsp_format = "fallback", range = range })
            end, { range = true })
        end
    },
}
