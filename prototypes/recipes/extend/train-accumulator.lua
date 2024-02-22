data:extend({
  {
type = "recipe",
name = "ei-train-accumulator-create",
icon = "__EternalIndustry__/graphics/items/train_accumulator.png",
icon_size = 128,
enabled = false,
category = "advanced-crafting",
energy_required = 3,
ingredients = {
  { "accumulator", 1 },
  -- { "circuit", 1 },
  { "copper-cable", 2 },
  { "iron-plate", 1 },
},
result = "ei-train-accumulator-empty",
  },
  {
type = "recipe",
crafting_category = {"ei-accumulator-recharge"},
name = "ei-train-accumulator-recharge",
icon = "__EternalIndustry__/graphics/items/train_accumulator-charging.png",
icon_size = 128,
enabled = false,
hidden = true,
energy_required = 40,
ingredients = {
  { "ei-train-accumulator-empty", 1 },
},
result = "ei-train-accumulator-full",
  }
})