function SemenarDataLib.tableDeepcopy(tbl)
    if type(tbl) ~= "table" then
        return tbl
    end
    local new_tbl = {}
    for key, val in pairs(tbl) do
        new_tbl[key] = SemenarDataLib.tableDeepcopy(val)
    end
    return new_tbl
end