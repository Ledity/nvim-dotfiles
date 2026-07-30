local opts = {
    expandtab = true,
    shiftwidth = 4,
    tabstop = 4,

    number = true,
    cursorline = true,
    relativenumber = true,

    splitright = true,
    splitbelow = true,

    langmap =
        'ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,' ..
        'фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz'
}

return opts
