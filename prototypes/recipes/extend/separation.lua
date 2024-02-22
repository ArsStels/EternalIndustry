require("ores_table")

for i, name in pairs(Resources_table) do
  data:extend({
    {
      -----------------------
      -- FIRST --------------
      -----------------------
      type = "recipe",
      name = "first-separation-"..name[name.name],
      icons = {
        {
          icon = "__EternalIndustry__/graphics/resource/not-shade/raw-"..name[i]..".png",
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
        ingredients = { { "drying-"..name[i], 10 } },
        results = {
          { type = "item", name = "poor-"..name[i].."-ore", amount = 6 },
          { type = "item", name = "medium-"..name[i].."-ore", amount = 3 },
          { type = "item", name = "rich-"..name[i].."-ore", amount = 1 }
        },
        enabled = true,
        allow_decomposition = false,
      },
      expensive = {
        energy_required = 45,
        ingredients = { { "drying-"..name[i].."", 20 } },
        results = {
          { type = "item", name = "poor-"..name[i].."-ore", amount = 14 },
          { type = "item", name = "medium-"..name[i].."-ore", amount = 5 },
          { type = "item", name = "rich-"..name[i].."-ore", amount = 1 },
        },
        enabled = true,
        allow_decomposition = false,
      },
      group = "ores",
      subgroup = "i["..name[i].."]",
      order = "s[separation]-a[1]",
    },
    {
      -----------------------
      -- POOR ---------------
      -----------------------
      type = "recipe",
      name = "poor-separation-"..name[i],
      icons = {
        {
          icon = "__EternalIndustry__/graphics/resource/not-shade/raw-"..name[i].."-ore.png",
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
        ingredients = { { "poor-"..name[i].."-ore", 10 } },
        results = {
          { type = "item", name = "medium-"..name[i].."-ore", amount = 8 },
          { type = "item", name = "stone", amount = 2 },
          { type = "item", name = "stone-dust", amount = 25 },
        },
        enabled = true,
        allow_decomposition = false,
      },
      expensive = {
        energy_required = 45,
        ingredients = { { "poor-"..name[i].."-ore", 20 } },
        results = {
          { type = "item", name = "medium-"..name[i].."-ore", amount = 14 },
          { type = "item", name = "stone", amount = 6 },
          { type = "item", name = "stone-dust", amount = 65 },
        },
        enabled = true,
        allow_decomposition = false,
      },
      group = "ores",
      subgroup = "i["..name[i].."]",
      order = "s[separation]-a[2]",
    },
    {
      -----------------------
      -- MEDIUM -------------
      -----------------------
      type = "recipe",
      name = "medium-separation-"..name[i].."",
      icons = {
        {
          icon = "__EternalIndustry__/graphics/resource/not-shade/raw-"..name[i].."-ore.png",
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
        ingredients = { { "medium-"..name[i].."-ore", 10 } },
        results = {
          { type = "item", name = "poor-"..name[i].."-ore", amount = 5 },
          { type = "item", name = "rich-"..name[i].."-ore", amount = 5 }
        },
        enabled = true,
        allow_decomposition = false,
      },
      expensive = {
        energy_required = 45,
        ingredients = { { "medium-"..name[i].."-ore", 20 } },
        results = {
          { type = "item", name = "poor-"..name[i].."-ore", amount = 10 },
          { type = "item", name = "rich-"..name[i].."-ore", amount = 10 },
        },
        enabled = true,
        allow_decomposition = false,
      },
      group = "ores",
      subgroup = "i["..name[i].."]",
      order = "s[separation]-a[3]",
    },
    {
      -----------------------
      -- RICH ---------------
      -----------------------
      type = "recipe",
      name = "rich-separation-"..name[i].."",
      icons = {
        {
          icon = "__EternalIndustry__/graphics/resource/not-shade/raw-"..name[i].."-ore.png",
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
        ingredients = { { "rich-"..name[i].."-ore", 10 } },
        results = {
          { type = "item", name = "medium-"..name[i].."-ore", amount = 5 },
          { type = "item", name = "enriched-"..name[i].."-ore", amount = 5 }
        },
        enabled = true,
        allow_decomposition = false,
      },
      expensive = {
        energy_required = 45,
        ingredients = { { "enriched-"..name[i].."-ore", 20 } },
        results = {
          { type = "item", name = "medium-"..name[i].."-ore", amount = 10 },
          { type = "item", name = "enriched-"..name[i].."-ore", amount = 10 },
        },
        enabled = true,
        allow_decomposition = false,
      },
      group = "ores",
      subgroup = "i["..name[i].."]",
      order = "s[separation]-a[4]",
    },
  })
end
