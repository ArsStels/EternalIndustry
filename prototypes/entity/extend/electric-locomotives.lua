local function rolling_stock_resistances()
  return {
    {
      type = "fire",
      decrease = 15,
      percent = 50,
    },
    {
      type = "physical",
      decrease = 15,
      percent = 30,
    },
    {
      type = "impact",
      decrease = 50,
      percent = 60,
    },
    {
      type = "explosion",
      decrease = 15,
      percent = 30,
    },
    {
      type = "acid",
      decrease = 5,
      percent = 20,
    },

    {
      type = "laser",
      decrease = 10,
      percent = 30,
    },
    {
      type = "electric",
      decrease = 12,
      percent = 50,
    },
    {
      type = "poison",
      decrease = 15,
      percent = 60,
    },
  }
end

data.raw.locomotive["locomotive"].resistances = rolling_stock_resistances()

data:extend({
  util.merge({
    data.raw.locomotive.locomotive,
    {
      name = "ei-electric-locomotive",
      minable = { result = "ei-electric-locomotive" },
      max_health = 1600,
      weight = 1000, --original is 2000
      max_speed = 1.3,
      max_power = "2.7MW",
      reversing_power_modifier = 0.6,
      braking_force = 18,
      friction_force = 0.375,
      air_resistance = 0.005215, -- this is a percentage of current speed that will be subtracted
      resistances = rolling_stock_resistances(),
      burner = {
        fuel_category = "ei-accumulator-fuel",
        effectivity = 1.5,
        fuel_inventory_size = 1,
        burnt_inventory_size = 1,
        smoke = nil,
      },
      created_smoke = nil,
      color = { r = 0.17, g = 0.07, b = 0.2, a = 0.8 },
    },
  }),
  util.merge({
    data.raw.locomotive.locomotive,
    {
      name = "ei-electric-locomotive-2",
      minable = { result = "ei-electric-locomotive-2" },
      max_health = 2200,
      weight = 1600, --original is 2000
      max_speed = 1.7,
      max_power = "4.8MW",
      reversing_power_modifier = 0.8,
      braking_force = 20,
      friction_force = 0.21,    --0.0005,
      air_resistance = 0.00365, --0.001, -- this is a percentage of current speed that will be subtracted
      resistances = rolling_stock_resistances(),
      burner = {
        fuel_category = "ei-accumulator-fuel",
        effectivity = 2.1,
        fuel_inventory_size = 2,
        burnt_inventory_size = 2,
        smoke = nil,
      },
      created_smoke = nil,
      color = { r = 0.17, g = 0.07, b = 0.5, a = 0.8 },
    },
  }),
})
