local m = {}

m.map = function(...)
    vim.keymap.set(...)
end

m.nmap = function(...)
    m.map('n', ...)
end

m.imap = function(...)
    m.map('i', ...)
end

return m
