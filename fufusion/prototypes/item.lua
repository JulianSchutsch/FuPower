data:extend(
{
  {
    type = "item",
    name = "fusion-solar-fuel",
    icon = "__base__/graphics/icons/boiler.png",
    flags = {"goes-to-main-inventory"},
    fuel_value = "2400MJ",
    subgroup = "fusion-resources",
    order = "c[solid-fuel]",
    stack_size = 2
  },
  {
    type = "item",
    name = "fusion-boiler",
    icon = "__base__/graphics/icons/boiler.png",
    flags = {"goes-to-quickbar"},
    subgroup = "fusion-buildings",
    place_result = "fusion-boiler",
    order = "a",
    stack_size = 10
  },
  {
    type = "item",
    name = "fusion-reactor",
    icon = "__base__/graphics/icons/solar-panel.png",
    flags = {"goes-to-quickbar"},
    subgroup = "fusion-buildings",
    place_result = "fusion-reactor",
    order = "a",
    stack_size = 10
  },
  {
    type = "item",
    name = "fusion-steam-engine",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"goes-to-quickbar"},
    subgroup = "fusion-buildings",
    place_result = "fusion-steam-engine",
    order = "a",
    stack_size = 10
  },
})
