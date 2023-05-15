local function CNLE(name, icon, heat, icon_size, default_temperature, max_temperature)
  data:extend({
    {
      type = "fluid",
      name = name,
      default_temperature = default_temperature,
      max_temperature = max_temperature,
      heat_capacity = heat,
      base_color = {r = 0.5, g = 0.5, b = 1},
      flow_color = {r = 0.4, g = 0.4, b = 1},
      icon = icon,
      icon_size = icon_size,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59,
      -- order = "a[fluid]-c[my-fluid]"
    }
  })
end

CNLE("ei-H-f", "__EternalIndustry__/graphics/items/iron-plate.png", "1KJ", 128, 25, 1200)
CNLE("pulp-siderite", "__EternalIndustry__/graphics/items/siderite.png", "nil", 128, 200, 2000)