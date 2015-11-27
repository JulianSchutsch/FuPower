data:extend(
{
  {
    type = "fluid",
    name = "deuterium",
    default_temperature = 25,
    heat_capacity = "3KJ",
    max_temperature=600,
    icon = "__base__/graphics/icons/fluid/water.png",
    flow_color = {r=0.0, g=0.0, b=0.0},
    base_color = {r=1.0, g=0.0, b=0.0},
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-b[deuterium]"
  },
  {
    type = "fluid",
    name = "fusion-heat-fluid",
    default_temperature = 15,
    heat_capacity = "5KJ",
    max_temperature = 600,
    icon = "__base__/graphics/icons/fluid/water.png",
    flow_color = {r=0.0, g=0.0, b=0.0},
    base_color = {r=1.0, g=1.0, b=0.0},
    pressure_to_speed_ratio = 0.3,
    flow_to_energy_ratio = 0.5,
    order = "steam"
  }
})
