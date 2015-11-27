require "fucore.lib.modules"

if modPresent_Belts() then
  data:extend(
  {
    type = "item",
    name = "fusion-transport-belt-to-ground-extended",
    icon = "__fupower__/graphics/icons/alien-transport-belt-to-ground-extended.png",
    flags = {"goes-to-quickbar"},
    subgroup = "fusion-buildings",
    place_result = "fusion-transport-belt-to-ground-extended",
    order = "a",
    stack_size = 50
  })
end

