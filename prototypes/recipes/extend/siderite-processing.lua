data: extend({
  {
    -----------------------
    -- RUMBLING -----------
    -----------------------
    type = "recipe",
    name = "rumbling-siderite",
    icon = "__EternalIndustry__/graphics/items/siderite.png",
    icon_size = 128,
    category = "advanced-crafting",
    normal = {
      energy_required = 30,
      ingredients = { { "siderite", 20 } },
      results = {
        { type = "item", name = "big-siderite", amount = 5 },
        { type = "item", name = "medium-siderite", amount = 5 },
        { type = "item", name = "small-siderite", amount = 5 },
      },
      enabled = true,
      allow_decomposition = false,
    },
    group = "ores",
    subgroup = "i[iron]-b[siderite]",
    order = "a-a[rumbling]",
  },
  {
    -----------------------
    -- GRINDING -----------
    -----------------------
    type = "recipe",
    name = "grinding-siderite",
    icon = "__EternalIndustry__/graphics/items/siderite.png",
    icon_size = 128,
    category = "advanced-crafting",
    normal = {
      energy_required = 30,
      ingredients = { { "medium-siderite", 20 } },
      results = {
        { type = "item", name = "small-siderite", amount = 5 },
      },
      enabled = true,
      allow_decomposition = false,
    },
    group = "ores",
    subgroup = "i[iron]-b[siderite]",
    order = "a-a[grinding]",
  },
  {
    -----------------------
    -- CRUSHING -----------
    -----------------------
    type = "recipe",
    name = "crushing-siderite",
    icon = "__EternalIndustry__/graphics/items/siderite.png",
    icon_size = 128,
    category = "advanced-crafting",
    normal = {
      energy_required = 30,
      ingredients = { { "big-siderite", 20 } },
      results = {
        { type = "item", name = "medium-siderite", amount = 5 },
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
    -- FLOTATION ----------
    -----------------------
    type = "recipe",
    name = "flotation-siderite",
    icon = "__EternalIndustry__/graphics/items/siderite.png",
    icon_size = 128,
    category = "advanced-crafting",
    normal = {
      energy_required = 30,
      ingredients = { { "small-siderite", 20 } },
      results = {
        { type = "item", name = "low-rich-siderite", amount = 5 },
      },
      enabled = true,
      allow_decomposition = false,
    },
    group = "ores",
    subgroup = "i[iron]-b[siderite]",
    order = "a-c[separation]-a",
  },
  {
    -----------------------
    -- SEPARATION ---------
    -----------------------
    type = "recipe",
    name = "separation-siderite",
    icon = "__EternalIndustry__/graphics/items/siderite.png",
    icon_size = 128,
    category = "advanced-crafting",
    normal = {
      energy_required = 30,
      ingredients = { { "low-rich-siderite", 20 } },
      results = {
        { type = "item", name = "medium-rich-siderite", amount = 5 },
      },
      enabled = true,
      allow_decomposition = false,
    },
    group = "ores",
    subgroup = "i[iron]-b[siderite]",
    order = "a-c[separation]-b",
  },
  {
    -----------------------
    -- MAGNITE ------------
    -- SEPARATION ---------
    -----------------------
    type = "recipe",
    name = "magnite-separation-siderite",
    icon = "__EternalIndustry__/graphics/items/siderite.png",
    icon_size = 128,
    category = "advanced-crafting",
    normal = {
      energy_required = 30,
      ingredients = { { "medium-rich-siderite", 20 } },
      results = {
        { type = "item", name = "high-rich-siderite", amount = 5 },
      },
      enabled = true,
      allow_decomposition = false,
    },
    group = "ores",
    subgroup = "i[iron]-b[siderite]",
    order = "a-c[separation]-c",
  },
  {
    -----------------------
    -- PULPING ------------
    -----------------------
    type = "recipe",
    name = "pulping-siderite",
    icon = "__EternalIndustry__/graphics/items/siderite.png",
    icon_size = 128,
    category = "advanced-crafting",
    normal = {
      energy_required = 30,
      ingredients = {
        { type = "item", name = "high-rich-siderite", amount = 20 },
        { type = "fluid", name = "water", amount = 60 },
      },
      results = {
        { type = "fluid", name = "pulp-siderite", amount = 50 },
      },
      enabled = true,
      allow_decomposition = false,
    },
    group = "ores",
    subgroup = "i[iron]-b[siderite]",
    order = "a-d[pulping]-a",
  },
  {
    -----------------------
    -- OXIDATION PULP -----
    -----------------------
    type = "recipe",
    name = "oxidation-siderite",
    icon = "__EternalIndustry__/graphics/items/siderite.png",
    icon_size = 128,
    category = "advanced-crafting",
    normal = {
      energy_required = 30,
      ingredients = {
        { type = "fluid", name = "pulp-siderite", amount = 20 },
        --{ type = "fluid", name = "oxygen", amount = 120 },
      },
      results = {
        { type = "fluid", name = "iron-2-oxide-impurities", amount = 7 },
        { type = "fluid", name = "water", amount = 20 },
        --{ type = "item", name = "silica", amount = 5 },
        --{ type = "fluid", name = "carbon-dioxide", amount = 40 },
      },
      enabled = true,
      allow_decomposition = false,
    },
    group = "ores",
    subgroup = "i[iron]-b[siderite]",
    order = "a-c[pulping]-b",
  },
  {
    -----------------------
    -- LEACHING -----------
    -----------------------
    type = "recipe",
    name = "leaching-siderite",
    icon = "__EternalIndustry__/graphics/items/siderite.png",
    icon_size = 128,
    category = "advanced-crafting",
    normal = {
      energy_required = 30,
      ingredients = {
        { type = "fluid", name = "iron-2-oxide-impurities", amount = 20 },
        --{ type = "fluid", name = "hydrochloric-acid", amount = 30 },
      },
      results = {
        { type = "fluid", name = "iron-3-oxide-impurities", amount = 10 },
      },
      enabled = true,
      allow_decomposition = false,
    },
    group = "ores",
    subgroup = "i[iron]-b[siderite]",
    order = "a-d[leaching]",
  },
  {
    -----------------------
    -- SOLITION -----------
    -- SEPARATION ---------
    -----------------------
    type = "recipe",
    name = "solution-separation",
    icon = "__EternalIndustry__/graphics/items/siderite.png",
    icon_size = 128,
    category = "advanced-crafting",
    normal = {
      energy_required = 30,
      ingredients = {
        { type = "fluid", name = "iron-3-oxide-impurities", amount = 20 },
        --{ type = "fluid", name = "nitric-acid", amount = 30 },
      },
      results = {
        { type = "item", name = "dirty-iron-concentrate", amount = 10 },
      },
      enabled = true,
      allow_decomposition = false,
    },
    group = "ores",
    subgroup = "i[iron]-b[siderite]",
    order = "a-e[separation]",
  },
  {
      -----------------------
      -- RINSING ------------
      -----------------------
      type = "recipe",
      name = "rinsing-iron-concentrate",
      icon = "__EternalIndustry__/graphics/items/siderite.png",
      icon_size = 128,
      category = "smelting",
      normal = {
        energy_required = 30,
        ingredients = {
          { type = "item", name = "dirty-iron-concentrate", amount = 10 },
        },
        results = {
          { type = "item", name = "wet-iron-concentrate", amount = 10 },
        },
        enabled = true,
        allow_decomposition = false,
      },
      group = "ores",
      subgroup = "i[iron]-b[siderite]",
      order = "a-f",
    },
  {
        -----------------------
        -- DRYING ------------
        -----------------------
        type = "recipe",
        name = "drying-iron-concentrate",
        icon = "__EternalIndustry__/graphics/items/siderite.png",
        icon_size = 128,
        category = "smelting",
        normal = {
          energy_required = 30,
          ingredients = {
            { type = "item", name = "wet-iron-concentrate", amount = 10 },
          },
          results = {
            { type = "item", name = "iron-concentrate", amount = 10 },
          },
          enabled = true,
          allow_decomposition = false,
        },
        group = "ores",
        subgroup = "i[iron]-b[siderite]",
        order = "a-g",
      }
})
