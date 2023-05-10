data:extend({
  {
    -----------------------
    -- FIRST --------------
    -----------------------
    type = "recipe",
    name = "first-separation-iron",
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
      ingredients = { { "drying-iron", 10 } },
      results = {
        { type = "item", name = "poor-iron-ore", amount = 6 },
        { type = "item", name = "medium-iron-ore", amount = 3 },
        { type = "item", name = "rich-iron-ore", amount = 1 }
      },
      enabled = true,
      allow_decomposition = false,
    },
    expensive = {
      energy_required = 45,
      ingredients = { { "drying-iron", 20 } },
      results = {
        { type = "item", name = "poor-iron-ore", amount = 14 },
        { type = "item", name = "medium-iron-ore", amount = 5 },
        { type = "item", name = "rich-iron-ore", amount = 1 },
      },
      enabled = true,
      allow_decomposition = false,
    },
    group = "ores",
    subgroup = "i[iron]",
    order = "s[separation]-a[1]",
  },
  {
    -----------------------
    -- POOR ---------------
    -----------------------
    type = "recipe",
    name = "poor-separation-iron",
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
      ingredients = { { "poor-iron-ore", 10 } },
      results = {
        { type = "item", name = "medium-iron-ore", amount = 8 },
        { type = "item", name = "stone", amount = 2 },
        { type = "item", name = "stone-dust", amount = 25 },
      },
      enabled = true,
      allow_decomposition = false,
    },
    expensive = {
      energy_required = 45,
      ingredients = { { "poor-iron-ore", 20 } },
      results = {
        { type = "item", name = "medium-iron-ore", amount = 14 },
        { type = "item", name = "stone", amount = 6 },
        { type = "item", name = "stone-dust", amount = 65 },
      },
      enabled = true,
      allow_decomposition = false,
    },
    group = "ores",
    subgroup = "i[iron]",
    order = "s[separation]-a[2]",
  },
  {
    -----------------------
    -- MEDIUM -------------
    -----------------------
    type = "recipe",
    name = "medium-separation-iron",
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
      ingredients = { { "medium-iron-ore", 10 } },
      results = {
        { type = "item", name = "poor-iron-ore", amount = 5 },
        { type = "item", name = "rich-iron-ore", amount = 5 }
      },
      enabled = true,
      allow_decomposition = false,
    },
    expensive = {
      energy_required = 45,
      ingredients = { { "medium-iron-ore", 20 } },
      results = {
        { type = "item", name = "poor-iron-ore", amount = 10 },
        { type = "item", name = "rich-iron-ore", amount = 10 },
      },
      enabled = true,
      allow_decomposition = false,
    },
    group = "ores",
    subgroup = "i[iron]",
    order = "s[separation]-a[3]",
  },
  {
    -----------------------
    -- RICH ---------------
    -----------------------
    type = "recipe",
    name = "rich-separation-iron",
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
      ingredients = { { "rich-iron-ore", 10 } },
      results = {
        { type = "item", name = "medium-iron-ore", amount = 5 },
        { type = "item", name = "enriched-iron-ore", amount = 5 }
      },
      enabled = true,
      allow_decomposition = false,
    },
    expensive = {
      energy_required = 45,
      ingredients = { { "enriched-iron-ore", 20 } },
      results = {
        { type = "item", name = "medium-iron-ore", amount = 10 },
        { type = "item", name = "enriched-iron-ore", amount = 10 },
      },
      enabled = true,
      allow_decomposition = false,
    },
    group = "ores",
    subgroup = "i[iron]",
    order = "s[separation]-a[4]",
  },
})
