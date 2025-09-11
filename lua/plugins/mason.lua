local mason_opts = {
  ensure_installed = {
    "bash-language-server",
    "grammarly-languageserver",
    "html-lsp",
    "htmx-lsp",
    "lua-language-server",
    "yaml-language-server",
    "sqlls",
    "shfmt",
    "texlab",
  },
}

local plugins = {
  { -- Mason configs
    "williamboman/mason.nvim",
    opts = mason_opts,
  },
}

return plugins
