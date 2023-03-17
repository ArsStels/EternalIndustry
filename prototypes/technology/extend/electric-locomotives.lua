data:extend({
  {
    type = "technology",
    name = "electric-locomotive",
    icons = {
      { icon = "__base__/graphics/icons/locomotive.png", icon_size = 64, tint = { r = 0.90, g = 0.90, b = 1, a = 1 }},
      { icon = "__astweaksdev__/graphics/icons/high_voltage.png", icon_size = 128, scale=0.25, shift= {-20, -17}},
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
        recipe = "ast-train-accumulator-create",
      },
      {
        type = "unlock-recipe",
        recipe = "ast-train-accumulator-recharge",
      },
      {
        type = "unlock-recipe",
        recipe = "electric-locomotive",
      },
      {
        type = "unlock-recipe",
        recipe = "ast-accumulator-recharger",
      },
    },
    order = "c-g-c",
  },

  
  {
    type = "technology",
    name = "electric-locomotive-2",
    icons = {
      { icon = "__base__/graphics/icons/locomotive.png", icon_size = 64, tint = { r = 0.80, g = 0.90, b = 1, a = 1 }},
      { icon = "__astweaksdev__/graphics/icons/high_voltage.png", icon_size = 128, scale=0.25, shift= {-20, -17}},
      { icon = "__base__/graphics/icons/signal/signal_2.png", icon_size = 64, scale=0.25, shift= {16, 16}},
      },
    prerequisites = {
      "electric-locomotive",
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
        recipe = "electric-locomotive-2",
      },
      {
        type = "unlock-recipe",
        recipe = "ast-accumulator-recharger-2",
      },
    },
    order = "c-g-c",
  },
})