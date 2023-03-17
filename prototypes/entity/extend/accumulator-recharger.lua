
data:extend({
  -- MK1 Accumulator-recharger
  util.merge({
    data.raw["assembling-machine"]["assembling-machine-2"],
    {
      name = "ei-accumulator-recharger",
      fixed_recipe = "ei-train-accumulator-recharge",
      recipe_category = {"ei-accumulator-recharge",},
      minable = { result = "ei-accumulator-recharger" },
      max_health = 300,
      next_upgrade = "ei-accumulator-recharger-2",
      module_specification = {
        module_info_icon_shift = {
          0,
          0.8
        },
        module_slots = 2
      },
      crafting_speed = 1,
      energy_usage = "2.57MW",
      working_sound = {
        sound = { filename = "__base__/sound/accumulator-working.ogg" },
        idle_sound = { filename = "__base__/sound/accumulator-idle.ogg", volume = 0.2 },
        max_sounds_per_type = 5,
        apparent_volume = 2.5,
        audible_distance_modifier = 0.5,
      },
      tint = { r = 0.0, g = 1.97, b = 2.28, a = 0.8 },
    },
  }),
-- MK2 Accumulator recharger
  util.merge({
    data.raw["assembling-machine"]["assembling-machine-2"],
    {
      name = "ei-accumulator-recharger-2",
      fixed_recipe = "ei-train-accumulator-recharge",
      recipe_category = {"ei-accumulator-recharge",},
      minable = { result = "ei-accumulator-recharger-2" },
      max_health = 800,
      next_upgrade = nil,
      module_specification = {
        module_info_icon_shift = {
          0,
          0.8
        },
        module_slots = 4
      },
      crafting_speed = 2,
      energy_usage = "4.46MW",
      working_sound = {
        sound = { filename = "__base__/sound/accumulator-working.ogg" },
        idle_sound = { filename = "__base__/sound/accumulator-idle.ogg", volume = 0.2 },
        max_sounds_per_type = 5,
        apparent_volume = 2.5,
        audible_distance_modifier = 0.5,
      },
      tint = { r = 0.0, g = 1.97, b = 2.28, a = 0.8 },
    },
  }),
})