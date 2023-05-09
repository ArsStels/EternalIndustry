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
      { icon = "__EternalIndustry__/graphics/resource/not-shade/raw-iron-ore.png" },
      { icon = "__EternalIndustry__/graphics/icons/drying.png" },
    },
    icon_size = 128,
    stack_size = 200,
    group = "ores",
    subgroup = "i[iron]",
    order = "d[drying]",
    localised_name = { "", { "prefixes.drying" }, " ", { "item-name." .. "drying-iron" } },
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
        scale = 0.1,
        shift = {10, 5},
      },
    },
    icon_size = 128,
    stack_size = 200,
    group = "ores",
    subgroup = "i[iron]",
    order = "s[separation]-a",
    localised_name = { "", { "item-name." .. "poor-iron-ore" } },
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
        scale = 0.1,
        shift = {10, 5},
      },
      {
        icon = "__EternalIndustry__/graphics/icons/tier.png",
        icon_size = 128,
        scale = 0.1,
        shift = {10, 10},
      },
    },
    icon_size = 128,
    stack_size = 200,
    group = "ores",
    subgroup = "i[iron]",
    order = "s[separation]-b",
    localised_name = { "", { "item-name." .. "medium-iron-ore" } },
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
        scale = 0.1,
        shift = {10, 5},
      },
      {
        icon = "__EternalIndustry__/graphics/icons/tier.png",
        icon_size = 128,
        scale = 0.1,
        shift = {10, 10},
      },
      {
        icon = "__EternalIndustry__/graphics/icons/tier.png",
        icon_size = 128,
        scale = 0.1,
        shift = {10, 15},
      },
    },
    icon_size = 128,
    stack_size = 200,
    group = "ores",
    subgroup = "i[iron]",
    order = "s[separation]-c",
    localised_name = { "", { "item-name." .. "rich-iron-ore" } },
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
        scale = 0.1,
        shift = {10, 5},
      },
      {
        icon = "__EternalIndustry__/graphics/icons/tier.png",
        icon_size = 128,
        scale = 0.1,
        shift = {10, 10},
      },
      {
        icon = "__EternalIndustry__/graphics/icons/tier.png",
        icon_size = 128,
        scale = 0.1,
        shift = {10, 15},
      },
      {
        icon = "__EternalIndustry__/graphics/icons/tier.png",
        icon_size = 128,
        scale = 0.1,
        shift = {10, 20},
      },
    },
    icon_size = 128,
    stack_size = 200,
    group = "ores",
    subgroup = "i[iron]",
    order = "s[separation]-d",
    localised_name = { "", { "item-name." .. "enriched-iron-ore" } },
  },
})
