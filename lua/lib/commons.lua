local M = {}

function M.merge_arrays(...)
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

function M.is_callable(obj)
    if type(obj) == 'function' 
        or type(obj) == 'table' and getmetatable(obj).__call ~= nil
    then
        return true
    end

    return false
end

return M
