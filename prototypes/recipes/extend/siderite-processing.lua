data: extend({
  {
    -----------------------
    -- CRUSHING -----------
    -----------------------
    type = "recipe",
    name = "crushing-siderite",
    icon = "__EternalIndustry__/graphics/items/ores/siderite.png",
    icon_size = 128,
    category = "smelting",
    normal = {
      energy_required = 30,
      ingredients = { { "siderite", 20 } },
      results = {
        { type = "item", name = "crushing-siderite", amount = 5 },
      },
      enabled = true,
      allow_decomposition = false,
    },
    group = "ores",
    subgroup = "i[iron]-b[siderite]",
    order = "a-b[crushing]",
  },
  {
    -----------------------
    -- RUMBLING -----------
    -----------------------
    type = "recipe",
    name = "rumbling-siderite",
    icon = "__EternalIndustry__/graphics/items/ores/siderite.png",
    icon_size = 128,
    category = "smelting",
    normal = {
      energy_required = 30,
      ingredients = { { "crushed-siderite", 20 } },
      results = {
        { type = "item", name = "rumbling-siderite", amount = 5 },
      },
      enabled = true,
      allow_decomposition = false,
    },
    group = "ores",
    subgroup = "i[iron]-b[siderite]",
    order = "a-c[rumbling]",
  }
})
