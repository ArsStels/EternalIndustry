data:extend({
  {
    -----------------------
    -- IRON ---------------
    -----------------------
    type = "recipe",
    name = "drying-iron",
    icons = {
      {
        icon = "__EternalIndustry__/graphics/resource/not-shade/raw-iron-ore.png",
        icon_size = 128,
      },
      {
        icon = "__EternalIndustry__/graphics/icons/drying.png",
        icon_size = 128,
        scale = 0.2,
        shift = { 10, 10 }
      },
    },
    icon_size = 64,
    category = "smelting",
    normal = {
      energy_required = 60,
      ingredients = { { "raw-iron-ore", 40 } },
      results = { { type = "item", name = "drying-iron", amount = 40 } },
      enabled = true,
      allow_decomposition = false,
    },
    expensive = {
      energy_required = 90,
      ingredients = { { "raw-iron-ore", 30 } },
      results = { { type = "item", name = "drying-iron", amount = 30 } },
      enabled = true,
      allow_decomposition = false,
    },
    group = "ores",
    subgroup = "i[iron]",
    order = "a-b[drying]",
  }
})
