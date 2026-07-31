local m = {}

function m.random_file(location)
    math.randomseed(os.time())
    local files = vim.fn.split(vim.fn.glob(location .. '/*'), '\n')
    local file = files[math.random(1, #files)]
    return file
end

function m.file_to_lines(file)
    local lines = {}
    for line in io.lines(file) do
        table.insert(lines, line)
    end
    return lines
end

function m.merge_arrays(...)
    local result = {}
    local n = select('#', ...)
    for i = 1, n do
        local array = select(i, ...)
        for _, v in ipairs(array) do
            table.insert(result, v)
        end
    end

    return result
end

function m.is_callable(obj)
    if type(obj) == 'function'
        or type(obj) == 'table' and getmetatable(obj).__call ~= nil
    then
        return true
    end

    return false
end

return m
