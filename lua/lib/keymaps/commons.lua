local m = {}

m.map = function(...)
    vim.keymap.set(...)
end

m.nmap = function(...)
    m.map('n', ...)
end

return m
