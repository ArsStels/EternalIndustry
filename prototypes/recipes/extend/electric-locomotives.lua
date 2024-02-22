-- Create new electric Locomotives
data:extend({
  {
type = "recipe",
name = "ei-electric-locomotive",
icons= {
  { icon = "__base__/graphics/icons/locomotive.png", icon_size = 64, tint = { r = 0.90, g = 0.90, b = 1, a = 1 }},
  { icon = "__base__/graphics/icons/signal/signal_1.png", icon_size = 64, scale=0.25, shift= {-10, -12}},
},
enabled = false,
category = "advanced-crafting",
energy_required = 20,
ingredients = {
  { "locomotive", 1 },
  --{ "electric-motor", 10 },
  --{ "circuit", 5 },
  { "medium-electric-pole", 2 },
},
result = "ei-electric-locomotive",
  },
  {
type = "recipe",
name = "ei-electric-locomotive-2",
icons= {
  { icon = "__base__/graphics/icons/locomotive.png", icon_size = 64, tint = { r = 0.80, g = 0.90, b = 1, a = 1 }},
  { icon = "__base__/graphics/icons/signal/signal_2.png", icon_size = 64, scale=0.25, shift= {-10, -12}},
},
enabled = false,
category = "advanced-crafting",
energy_required = 20,
ingredients = {
  { "ei-electric-locomotive", 1 },
  --{ "electric-engine-unit", 10 },
  { "low-density-structure", 5 },
  { "advanced-circuit", 10 },
  --{ "optical-fiber", 2 },
  --{ "advanced-circuit", 10 },
  --{ "advanced-circuit", 10 },
},
result = "ei-electric-locomotive-2",
  }
})