Raw_resources = {
--  ["item-1"] = {stack = 50,}
}

for name, extra in pairs(Raw_resources) do
  if extra.stack == nil then
    extra.stack = 100
  end
  if extra.is == nil then
    extra.is = 64
  end
  if extra.icon == nil then
    extra.icon = "__EternalIndustry__/graphics/items/clean-metal/iron-plate.png"
  else
    extra.icon = "__EternalIndustry__/graphics/resource/raw-resources/" .. name .. ".png"
  end
  local item =
  {
    type = "item",
    name = "raw-"..name,
    localised_name = { "", {"prefixes.raw"}," ", { "item-name." .. name } },
    icon = extra.icon,
    icon_size = extra.is,
    stack_size = extra.stack,
    group = "ores",
    subgroup = "ores",
    order = "a",
  }
  data:extend({item})
end