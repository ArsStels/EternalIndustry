data:extend({
  {
    type = "technology",
    name = "ei-electric-locomotive",
    icons = {
      { icon = "__base__/graphics/icons/locomotive.png", icon_size = 64, tint = { r = 0.90, g = 0.90, b = 1, a = 1 }},
      { icon = "__EternalIndustry__/graphics/icons/high_voltage.png", icon_size = 128, scale=0.25, shift= {-20, -17}},
      { icon = "__base__/graphics/icons/signal/signal_1.png", icon_size = 64, scale=0.25, shift= {16, 16}},
      },
    prerequisites = {
      "automated-rail-transportation",
    },
    unit = {
      count = 200,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "ei-train-accumulator-create",
      },
      {
        type = "unlock-recipe",
        recipe = "ei-train-accumulator-recharge",
      },
      {
        type = "unlock-recipe",
        recipe = "ei-electric-locomotive",
      },
      {
        type = "unlock-recipe",
        recipe = "ei-accumulator-recharger",
      },
    },
    order = "c-g-c",
  },

  
  {
    type = "technology",
    name = "ei-electric-locomotive-2",
    icons = {
      { icon = "__base__/graphics/icons/locomotive.png", icon_size = 64, tint = { r = 0.80, g = 0.90, b = 1, a = 1 }},
      { icon = "__EternalIndustry__/graphics/icons/high_voltage.png", icon_size = 128, scale=0.25, shift= {-20, -17}},
      { icon = "__base__/graphics/icons/signal/signal_2.png", icon_size = 64, scale=0.25, shift= {16, 16}},
      },
    prerequisites = {
      "ei-electric-locomotive",
      "electric-energy-distribution-2",
      "low-density-structure",
    },
    unit = {
      count = 300,
      time = 45,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "ei-electric-locomotive-2",
      },
      {
        type = "unlock-recipe",
        recipe = "ei-accumulator-recharger-2",
      },
    },
    order = "c-g-c",
  },
})