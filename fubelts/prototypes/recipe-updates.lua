require "fucore.lib.modules"

if modPresent_Belts() then
  data:extend(
  {
    type = "recipe",
    name = "fusion-transport-belt-to-ground-extended",
    subgroup = "fusion-belts",
    enabled = "false",
    energy_required = 1,
    ingredients = {{"express-transport-belt-to-ground-extended", 10}, {"alien-artifact", 1}},
    results = {{"fusion-transport-belt-to-ground-extended", 10}}
  })
end
