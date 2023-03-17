function SemenarDataLib.hasIconData(proto)
    return proto ~= nil and (proto.icon ~= nil or proto.icons ~= nil)
end

function SemenarDataLib.extractIconData(proto)
    local icon_data = {}
    if proto then
        if proto.icons then
            icon_data.icons = proto.icons
        else
            icon_data.icon = proto.icon
        end
        if proto.icon_size then
            icon_data.icon_size = proto.icon_size
        end
        if proto.icon_mipmaps then
            icon_data.icon_mipmaps = proto.icon_mipmaps
        end
    end
    return icon_data
end

function SemenarDataLib.applyIconData(proto, icon_data)
    proto.icon = nil
    proto.icons = nil
    proto.icon_size = nil
    proto.icon_mipmaps = nil
    for key, val in pairs(icon_data) do
        proto[key] = SemenarDataLib.tableDeepcopy(val)
    end
end

function SemenarDataLib.getElectronicCircuitIcon(tint)
    local icon_data = {
        icons = {},
        icon_size = 64,
        icon_mipmaps = 4
    }

    -- Red component: __base__/graphics/icons/advanced-circuit.png
    if tint['r'] > 0 then
        local alpha = 1
        table.insert(icon_data.icons, {icon = "__base__/graphics/icons/advanced-circuit.png",  tint={r=alpha, g=alpha, b=alpha, a=alpha}})
    end
    -- Green component: __base__/graphics/icons/electronic-circuit.png
    if tint['g'] > 0 then
        local alpha = (tint['g']+tint['b'])/(tint['r']+tint['g']+tint['b'])
        table.insert(icon_data.icons, {icon = "__base__/graphics/icons/electronic-circuit.png", tint={r=alpha, g=alpha, b=alpha, a=alpha}})
    end
    -- Blue component: __base__/graphics/icons/processing-unit.png
    if tint['b'] > 0 then
        local alpha = (tint['b'])/(tint['r']+tint['g']+tint['b'])
        table.insert(icon_data.icons, {icon = "__base__/graphics/icons/processing-unit.png", tint={r=alpha, g=alpha, b=alpha, a=alpha}})
    end

    return icon_data;
end