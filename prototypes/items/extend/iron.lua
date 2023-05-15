data.raw["item"]["iron-plate"].icon = "__EternalIndustry__/graphics/items/iron-plate.png"
data.raw["item"]["iron-plate"].icon_size = 128

data:extend({
  {
    -----------------------
    -- DRYING -------------
    -----------------------
    type = "item",
    name = "drying-iron",
    icons = {
      {
        icon = "__EternalIndustry__/graphics/resource/not-shade/raw-iron-ore.png",
      },
      {
        icon = "__EternalIndustry__/graphics/icons/drying.png",
        icon_size = 128,
        scale = 0.25,
        shift = { 10, 0 },
      },
    },
    icon_size = 128,
    stack_size = 200,
    group = "ores",
    subgroup = "i[iron]",
    order = "d[drying]",
    localised_name = { "", { "prefixes.drying" }, " ", { "suffix.iron" }, " ", { "suffix.ore" } },
  },
  {
    -----------------------
    -- POOR ---------------
    -----------------------
    type = "item",
    name = "poor-iron-ore",
    icons = {
      { icon = "__EternalIndustry__/graphics/resource/not-shade/raw-iron-ore.png" },
      {
        icon = "__EternalIndustry__/graphics/icons/tier.png",
        icon_size = 128,
        scale = 0.05,
        shift = {10, 15},
      },
    },
    icon_size = 128,
    stack_size = 200,
    group = "ores",
    subgroup = "i[iron]",
    order = "c[separation]-a",
  },
  {
    -----------------------
    -- MEDIUM -------------
    -----------------------
    type = "item",
    name = "medium-iron-ore",
    icons = {
      { icon = "__EternalIndustry__/graphics/resource/not-shade/raw-iron-ore.png" },
      {
        icon = "__EternalIndustry__/graphics/icons/tier.png",
        icon_size = 128,
        scale = 0.05,
        shift = {10, 15},
      },
      {
        icon = "__EternalIndustry__/graphics/icons/tier.png",
        icon_size = 128,
        scale = 0.05,
        shift = {10, 10},
      },
    },
    icon_size = 128,
    stack_size = 200,
    group = "ores",
    subgroup = "i[iron]",
    order = "c[separation]-b",
  },
  {
    -----------------------
    -- RICH ---------------
    -----------------------
    type = "item",
    name = "rich-iron-ore",
    icons = {
      { icon = "__EternalIndustry__/graphics/resource/not-shade/raw-iron-ore.png" },
      {
        icon = "__EternalIndustry__/graphics/icons/tier.png",
        icon_size = 128,
        scale = 0.05,
        shift = {10, 15},
      },
      {
        icon = "__EternalIndustry__/graphics/icons/tier.png",
        icon_size = 128,
        scale = 0.05,
        shift = {10, 10},
      },
      {
        icon = "__EternalIndustry__/graphics/icons/tier.png",
        icon_size = 128,
        scale = 0.05,
        shift = {10, 5},
      },
    },
    icon_size = 128,
    stack_size = 200,
    group = "ores",
    subgroup = "i[iron]",
    order = "c[separation]-c",
  },
  {
    -----------------------
    -- ENRICHED -----------
    -----------------------
    type = "item",
    name = "enriched-iron-ore",
    icons = {
      { icon = "__EternalIndustry__/graphics/resource/not-shade/raw-iron-ore.png" },
      {
        icon = "__EternalIndustry__/graphics/icons/tier.png",
        icon_size = 128,
        scale = 0.05,
        shift = {10, 15},
      },
      {
        icon = "__EternalIndustry__/graphics/icons/tier.png",
        icon_size = 128,
        scale = 0.05,
        shift = {10, 10},
      },
      {
        icon = "__EternalIndustry__/graphics/icons/tier.png",
        icon_size = 128,
        scale = 0.05,
        shift = {10, 5},
      },
      {
        icon = "__EternalIndustry__/graphics/icons/tier.png",
        icon_size = 128,
        scale = 0.05,
        shift = {10, 0},
      },
    },
    icon_size = 128,
    stack_size = 200,
    group = "ores",
    subgroup = "i[iron]",
    order = "c[separation]-d",
  },
  {
    -----------------------
    -- LIMONITE -----------
    -----------------------
    type = "item",
    name = "limonite",
    icon = "__EternalIndustry__/graphics/items/limonite.png",
    icon_size = 128,
    stack_size = 200,
    group = "ores",
    subgroup = "i[iron]-b[limonite]",
    order = "a-a",
  },
  {
    -----------------------
    -- SIDERITE -----------
    -----------------------
    type = "item",
    name = "siderite",
    icon = "__EternalIndustry__/graphics/items/siderite.png",
    icon_size = 128,
    stack_size = 200,
    group = "ores",
    subgroup = "i[iron]-b[siderite]",
    order = "a-a",
  },
  {
    -----------------------
    -- HEMATITE -----------
    -----------------------
    type = "item",
    name = "hematite",
    icon = "__EternalIndustry__/graphics/items/hematite.png",
    icon_size = 128,
    stack_size = 200,
    group = "ores",
    subgroup = "i[iron]-b[hematite]",
    order = "a-a",
  },
  {
    -----------------------
    -- MAGNETITE ----------
    -----------------------
    type = "item",
    name = "magnetite",
    icon = "__EternalIndustry__/graphics/items/magnetite.png",
    icon_size = 128,
    stack_size = 200,
    group = "ores",
    subgroup = "i[iron]-b[magnetite]",
    order = "a-a",
  },
  {
    -----------------------
    -- BIG ----------------
    -- SIDERITE -----------
    -----------------------
    type = "item",
    name = "big-siderite",
    icon = "__EternalIndustry__/graphics/items/siderite.png",
    icon_size = 128,
    stack_size = 200,
    group = "ores",
    subgroup = "i[iron]-b[siderite]",
    order = "a-a-a",
  },
  {
    -----------------------
    -- MEDIUM -------------
    -- SIDERITE -----------
    -----------------------
    type = "item",
    name = "medium-siderite",
    icon = "__EternalIndustry__/graphics/items/siderite.png",
    icon_size = 128,
    stack_size = 200,
    group = "ores",
    subgroup = "i[iron]-b[siderite]",
    order = "a-a-b",
  },
  {
    -----------------------
    -- SMALL --------------
    -- SIDERITE -----------
    -----------------------
    type = "item",
    name = "small-siderite",
    icon = "__EternalIndustry__/graphics/items/siderite.png",
    icon_size = 128,
    stack_size = 200,
    group = "ores",
    subgroup = "i[iron]-b[siderite]",
    order = "a-a-c",
  },
  {
    -----------------------
    -- DIRTY IRON----------
    -- CONCENTRATE --------
    -----------------------
    type = "item",
    name = "dirty-iron-concentrate",
    icon = "__EternalIndustry__/graphics/items/siderite.png",
    icon_size = 128,
    stack_size = 200,
    group = "ores",
    subgroup = "i[iron]-b[siderite]",
    order = "a-c[rumbling]",
  },
  {
    -----------------------
    -- WET IRON -----------
    -- CONCENTRATE --------
    -----------------------
    type = "item",
    name = "wet-iron-concentrate",
    icon = "__EternalIndustry__/graphics/items/siderite.png",
    icon_size = 128,
    stack_size = 200,
    group = "ores",
    subgroup = "i[iron]-b[siderite]",
    order = "a-c[rumbling]",
  },
  {
    -----------------------
    -- IRON CONCENTRATE ---
    -----------------------
    type = "item",
    name = "iron-concentrate",
    icon = "__EternalIndustry__/graphics/items/siderite.png",
    icon_size = 128,
    stack_size = 200,
    group = "ores",
    subgroup = "i[iron]-b[siderite]",
    order = "a-c[rumbling]",
  },
  {
    -----------------------
    -- LOW RICH -----------
    -- SIDERITE -----------
    -----------------------
    type = "item",
    name = "low-rich-siderite",
    icon = "__EternalIndustry__/graphics/items/siderite.png",
    icon_size = 128,
    stack_size = 200,
    group = "ores",
    subgroup = "i[iron]-b[siderite]",
    order = "a-c[rumbling]",
  },
  {
    -----------------------
    -- MEDIUM RICH --------
    -- SIDERITE -----------
    -----------------------
    type = "item",
    name = "medium-rich-siderite",
    icon = "__EternalIndustry__/graphics/items/siderite.png",
    icon_size = 128,
    stack_size = 200,
    group = "ores",
    subgroup = "i[iron]-b[siderite]",
    order = "a-c[rumbling]",
  },
  {
    -----------------------
    -- HIGH RICH ----------
    -- SIDERITE -----------
    -----------------------
    type = "item",
    name = "high-rich-siderite",
    icon = "__EternalIndustry__/graphics/items/siderite.png",
    icon_size = 128,
    stack_size = 200,
    group = "ores",
    subgroup = "i[iron]-b[siderite]",
    order = "a-c[rumbling]",
  },
})
