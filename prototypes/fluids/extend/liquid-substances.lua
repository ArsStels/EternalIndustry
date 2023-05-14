local function CNLE(name, icon, heat, icon_size)
  data:extend({
    {
      type = "fluid",
      name = name,
      default_temperature = 25,
      max_temperature = 100,
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

CNLE("ei-H-f", "__EternalIndustry__/graphics/items/iron-plate.png", "1KJ", 128)