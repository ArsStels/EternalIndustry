data: extend({
  {
    -----------------------
    -- IRON ---------------
    -----------------------
    type = "recipe",
    name = "iron-sorting",
    icons = {
      {
        icon = "__EternalIndustry__/graphics/resource/not-shade/raw-iron-ore.png",
        icon_size = 128,
      },
      {
        icon = "__EternalIndustry__/graphics/icons/separation.png",
        icon_size = 128,
        scale = 0.2,
        shift = { -10, 10 }
      },
    },
    icon_size = 64,
    category = "smelting",
    normal = {
      energy_required = 30,
      ingredients = { { "enriched-iron-ore", 20 } },
      results = {
        { type = "item", name = "limonite", amount = 5 },
        { type = "item", name = "magnetite", amount = 5 },
        { type = "item", name = "siderite", amount = 5 },
        { type = "item", name = "hematite", amount = 5 },
      },
      enabled = true,
      allow_decomposition = false,
    },
    group = "ores",
    subgroup = "i[iron]",
    order = "s[sorting]",
    localised_name = { "", { "prefixes.sorting" }, " ", { "suffix.iron" }, " ", { "suffix.ores" } },
  },
})