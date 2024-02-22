Crushed_ore = {
["metal_1"] = {},
["metal_2"] = {},
["metal_3"] = {},
["metal_4"] = {},
}

for name, _ in pairs(Crushed_ore) do
  local subgroup = {
    type = "item-subgroup",
    name = name,
    group = "ores"
  }
  data:extend({ subgroup })
end

for name, extra in pairs(Crushed_ore) do
  if extra.stack == nil then
    extra.stack = 100
  end
  if extra.is == nil then
    extra.is = 64
  end
  if extra.icon == nil then
    extra.icon = "__EternalIndustry__/graphics/items/crushed-ores/crushed-ore-default.png"
  else
    extra.icon = "__EternalIndustry__/graphics/items/crushed-ores/" .. name .. ".png"
  end
  local item =
  {
    type = "item",
    name = "crushed-" .. name,
    icons = { { icon = extra.icon, tint = Resources_table[name].color, a = 1, } },
    icon_size = extra.is,
    stack_size = extra.stack,
    group = "ores",
    subgroup = name,
    order = data.raw["resource"][name].order,
    localised_name = { "", { "prefixes.crushed" }, " ", { "item-name." .. name } },
  }
  data:extend({ item })
end
