local raw_items = {
  ["item-1"] = {stack = 50,}
}

for name, extra in pairs(raw_items) do
  if extra.stack == nil then
    extra.stack = 100
  end
  if extra.is == nil then
    extra.is = 64
  end
  if extra.icon == nil then
    extra.icon = "__EternalIndustry__/graphics/items/iron-plate.png"
  else
    extra.icon = "__EternalIndustry__/graphics/resource/raw-resources/" .. name .. ".png"
  end
  local item =
  {
    type = "item",
    name = name,
    icon = extra.icon,
    icon_size = extra.is,
    stack_size = extra.stack
  }
  data:extend({item})
end