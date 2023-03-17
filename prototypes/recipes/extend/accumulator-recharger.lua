data:extend({
{
  type = "recipe",
  name = "ast-accumulator-recharger",
  icons= {
    { icon = "__base__/graphics/icons/assembling-machine-2.png", icon_size = 64, tint = { r = 0.90, g = 0.90, b = 1, a = 1 }},
    { icon = "__base__/graphics/icons/signal/signal_1.png", icon_size = 64, scale=0.25, shift= {-10, -12}},
  },
  enabled = false,
  category = "advanced-crafting",
  energy_required = 10,
  ingredients = {
    { "assembling-machine-2", 1 },
    { "circuit", 5 },
    { "acsr-cable", 10 },
  },
  result = "ast-accumulator-recharger",
},
{
  type = "recipe",
  name = "ast-accumulator-recharger-2",
  icons= {
    { icon = "__base__/graphics/icons/assembling-machine-2.png", icon_size = 64, tint = { r = 0.80, g = 0.90, b = 1, a = 1 }},
    { icon = "__base__/graphics/icons/signal/signal_2.png", icon_size = 64, scale=0.25, shift= {-10, -12}},
  },
  enabled = false,
  category = "advanced-crafting",
  energy_required = 30,
  ingredients = {
    { "ast-accumulator-recharger", 1 },
    { "advanced-circuit", 10 },
    { "acsr-cable", 20 },
    { "effectivity-module", 1 },
  },
  result = "ast-accumulator-recharger-2",
},
})