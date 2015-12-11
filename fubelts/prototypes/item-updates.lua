require "fucore.lib.modules"

if modPresent_Belts() then
  item =
  {
    type = "item",
    name = "fusion-transport-belt-to-ground-extended",
    icon = "__fupower__/graphics/icons/fusion-transport-belt-to-ground-extended.png",
    flags = {"goes-to-quickbar"},
    subgroup = "fusion-buildings",
    place_result = "fusion-transport-belt-to-ground-extended",
    order = "l",
    stack_size = 50
  }
  data:extend({item})
  item =
  {
    type = "item",
    name = "fusion-super-transport-belt-to-ground-extended",
    icon = "__fupower__/graphics/icons/fusion-super-transport-belt-to-ground-extended.png",
    flags = {"goes-to-quickbar"},
    subgroup = "fusion-buildings",
    place_result = "fusion-super-transport-belt-to-ground-extended",
    order = "h",
    stack_size = 50
  }
  data:extend({item})
end