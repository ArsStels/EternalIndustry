local util = require("util")
local co = util.color

Resources_table = {
  -- Iron ores:
  -- ["limonite"] = { style = "normal", color = co("#0ad952") },
  -- ["goethite"] = { base_density = 120, color = co("#ada14a") },
  ["raw-iron-ore"] = { color = co("#ada14a") },
  -- Copper ores:
  ["chalcopyrite"] = { color = co("#ffe800") },
  ["malachite"] = { color = co("#0ad952") },
  -- Uranium Ores:
  ["carnotite"] = { color = co("#c7b446") },
  ["nasturan"] = { color = co("#463A3A") },
  -- Cobalt ores:
  ["cobaltite"] = { color = co("#B0C4DE") },
  ["safflorite"] = { color = co("#a0a0a0") },
  -- Lead Ores:
  ["galenite"] = { color = co("#505054") },
  ["cerussite"] = { color = co("#744c2c") },
  -- Tin ores:
  ["cassiterite"] = { color = co("#d0c8a4") },
  ["stannite"] = { color = co("#343838") },
  -- Silver Ores:
  ["native_silver"] = { color = co("#a8a098") },
  ["proustite"] = { color = co("#540008") },
  -- Molybdenum Ores:
  ["molybdenite"] = { color = co("#9090a0") },
  ["wulfenite"] = { color = co("#b83814") },
  -- Nickel ores:=
  ["nickelite"] = { color = co("#302820") },
  ["garnierite"] = { color = co("#24583c") },
  -- Aluminum ores:
  ["bauxite"] = { color = co("#e4b87c") },
  ["nepheline_syenites"] = { color = co("#f0ece0") },
  -- Titanium ores:
  ["ilmenite"] = { color = co("#383834") },
  ["rutile"] = { color = co("#642c00") },
  ["anatase"] = { color = co("#606058") },
  -- Manganese ores:
  ["pyrolusite"] = { color = co("#64685c") },
  ["rhodochrosite"] = { color = co("#a81010") },
  -- Vanadium ores:
  ["vanadinite"] = { color = co("#4c1c24") },
  ["dekloisite"] = { color = co("#e46818") },
  -- Chromites:
  ["chromite"] = { color = co("#686468") },
  ["magnochromite"] = { color = co("#50504c") },
  -- Zinc ores:
  ["zincite"] = { color = co("#740000") },
  ["sphalerite"] = { color = co("#5c3014") },
  -- Beryllium ores:
  ["chrysoberyl"] = { color = co("#94986c") },
  ["danalite"] = { color = co("#7c8080") },
  -- Gold-bearing ores:
  ["calaverite"] = { color = co("#a7a0a1") },
  ["sylvanite"] = { color = co("#5a5a54") },
  -- Lithium ores (lake ores):
  ["vpodumene"] = { color = co("#907080") },
  ["petalite"] = { color = co("#707060") },
  -- Magnesium ores:
  ["brusite"] = { color = co("#609090") },
  ["magnesite"] = { color = co("#d0d0c0") },
  -- Bismuth ores:
  ["bismuthate"] = { color = co("#a0a090") },
  ["tetradimite"] = { color = co("#9090a0") },
  -- Tungsten ores:
  ["ferberite"] = { color = co("#a09060") },
  ["gubnerite"] = { color = co("#c0c0b0") },
  -- Carbon-bearing ores:
  ["graphite"] = { color = co("#505050") },
  ["gagate"] = { color = co("#202020") },
  ["diamonds"] = { color = co("#c0b0a0 ") },
  -- Quartz ores:
  ["chalcedony"] = { color = co("#8090c0") },
  ["amethyst"] = { color = co("#502050") },
  -- Platinum Ores:
  ["native_platinum"] = { color = co("#a09080") },
  ["sperrylite"] = { color = co("#504010") },
  -- Salt ores:
  ["halite"] = { color = co("#908070") },
  ["silvin"] = { color = co("#c06040") },
  -- Other:
  ["calcite"] = { color = co("#e0b090") },
  ["peat"] = { color = co("#605040") },
  ["bitumen_sand"] = { color = co("#303020") },
  ["natural_gas"] = { color = co("#ffa010") },
  ["cinnabar"] = { color = co("#804040") },
}

--[[
local autoplace_arguments
if extra.distribution == "big" then
  autoplace_arguments = {
    --big stuff
  }
elseif extra.distribution == "rare" then
  local a = nil
end
prototype.autoplace = whatever(autoplace_arguments)
]]
--
for name, _ in pairs(Resources_table) do
  data:extend({
    {
      type = "noise-layer",
      name = name
    }
  })
end

local resource_autoplace = require("resource-autoplace")
local ras = resource_autoplace.resource_autoplace_settings
local arg
local resource_add
local particle_params

for name, extra in pairs(Resources_table) do
  if extra.style == nil then
    extra.style = "scattered"
  end
  if extra.color == nil then
    extra.color = co("#ffffff")
  end
  if extra.type == nil then
    extra.type = "solid"
  end
  if extra.base_density == nil then
    extra.base_density = 100
  end
  if extra.richness_scale == nil then
    extra.richness_scale = 1
  end
  if extra.fc == nil then
    extra.fc = 3
  end
  if extra.vc == nil then
    extra.vc = 3
  end
  if extra.style == "scattered" then
    arg = {
      name = name,
      order = "d",                       --other resources should get placed first?
      base_density = extra.base_density, --(details.base_density) or 100,
      regular_rq_factor_multiplier = 1.15,
      has_starting_area_placement = false,
      --size, but it also changes frequency
      random_spot_size_minimum = .1,
      random_spot_size_maximum = .18,
      --starting_rq_factor_multiplier = 1.1, --not in starting area, should be fine
      richness_post_multiplier = extra.richness_scale,
      peaks = {
        {
          influence = -5,
          --min_influence = 0.18,
          --max_influence = 0.31,
          -- richness_influence = 0.3,
          noise_persistence = 0.8,
          noise_octaves_difference = 0.27,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 5,
          min_influence = 0.22,
          max_influence = 0.27,
          richness_influence = 0.2,
          noise_layer = name,
          --noise_persistence = 0.37,
          --noise_octaves_difference = 0.82,
        },
      },
      coverage = 5
      --random_probability_penalty = 0.00043,
      --noise_octaves_difference = 0.094,
      --richness_multiplier_distance_bonus = 0.03,
      --propability = 0.005,
      --min_propability = 0.003,
      --max_propability = 0.008
    }
  elseif extra.style == "big" then
    arg = {
      name = name,
      order = "d",                       --other resources should get placed first?
      base_density = extra.base_density, --(details.base_density) or 100,
      regular_rq_factor_multiplier = 1.3,
      has_starting_area_placement = false,
      --size, but it also changes frequency
      random_spot_size_minimum = 0.2,
      random_spot_size_maximum = .25,
      richness_post_multiplier = extra.richness_scale,
      --random_probability_penalty = 0.00071,
      --noise_octaves_difference = 0.117,
      --richness_multiplier_distance_bonus = 0.03,
      --propability = 0.005,
      --min_propability = 0.003,
      --max_propability = 0.008
    }
  elseif extra.style == "normal" then
    --let it break
    arg = {
      name = name,
      order = "d", --other resources should get placed first?
      base_density = extra.base_density,
      regular_rq_factor_multiplier = 1,
      has_starting_area_placement = false,
      --reduce size
      random_spot_size_minimum = 0.3,
      random_spot_size_maximum = 0.5,
      richness_post_multiplier = extra.richness_scale,
      --random_probability_penalty = 0.0006,
      --noise_octaves_difference = 0.108,
      --richness_multiplier_distance_bonus = 0.03,
      --propability = 0.005,
      --min_propability = 0.003,
      --max_propability = 0.008
    }
  end

  local autoplace =
  {
    type = "autoplace-control",
    name = name,
    localised_name = { "", "[entity=" .. name .. "] ", { "entity-name." .. name } },
    richness = true,
    category = "resource",
    order = extra.order
  }

  local item =
  {
    type = "item",
    name = name,
    icon = "__EternalIndustry__/graphics/resource/not-shade/" .. name .. ".png",
    icon_size = 128,
    stack_size = 200
  }
  local stages
  local anim
  extra.stages = { 2000, 500, 10 }
  anim =
  {
    sheet = {
      filename = "__EternalIndustry__/graphics/resource/ore-shade.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      frame_count = extra.fc,
      variation_count = extra.vc,
      scale = 0.75,
      tint = extra.color
    }
  }
  if extra.type == "solid" then
    particle_params =
    {
      type = "optimized-particle",
      name = name .. "-ore-particle",
      flags = { "not-on-map" },
      life_time = 180,
      pictures = {
        {
          filename = "__EternalIndustry__/graphics/particles/ore-particle1.png",
          priority = "extra-high",
          width = 32,
          height = 32,
          frame_count = 1,
          animation_speed = 0.5,
          scale = 0.25,
          tint = extra.color,
          1
        },
        {
          filename = "__EternalIndustry__/graphics/particles/ore-particle2.png",
          priority = "extra-high",
          width = 32,
          height = 32,
          frame_count = 1,
          animation_speed = 0.5,
          scale = 0.25,
          tint = extra.color,
          1
        },
        {
          filename = "__EternalIndustry__/graphics/particles/ore-particle3.png",
          priority = "extra-high",
          width = 32,
          height = 32,
          frame_count = 1,
          animation_speed = 0.5,
          scale = 0.25,
          tint = extra.color,
          1
        },
        {
          filename = "__EternalIndustry__/graphics/particles/ore-particle4.png",
          priority = "extra-high",
          width = 32,
          height = 32,
          frame_count = 1,
          animation_speed = 0.5,
          scale = 0.25,
          tint = extra.color,
          1
        },
        {
          filename = "__EternalIndustry__/graphics/particles/ore-particle5.png",
          priority = "extra-high",
          width = 32,
          height = 32,
          frame_count = 1,
          animation_speed = 0.5,
          scale = 0.25,
          tint = extra.color,
          1
        },
      }
    }
    resource_add =
    {
      type = "resource",
      name = name,
      icon = "__EternalIndustry__/graphics/resource/not-shade/" .. name .. ".png",
      icon_size = 128,
      flags = { "placeable-neutral" },
      group = "ores",
      order = "a-c-b[" .. name .. "]",
      infinite = false,
      map_color = extra.color,
      minable = {
        hardness = 1,
        mining_time = 1,
        result = name,
        mining_particle = name .. "-ore-particle",
        angle = 0.6,
        scale = 0.5,
      },
      collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      stage_counts = extra.stages,
      stages = anim
    }
  end
  if extra.starting_area == true then
    resource_autoplace.initialize_patch_set(name, true)
  else
    resource_autoplace.initialize_patch_set(name, false) --no starting area placement set
  end

  data:extend({ autoplace, item, resource_add, particle_params })

  data.raw.resource[name].autoplace = ras(arg)
end
