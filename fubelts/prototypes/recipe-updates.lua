require "fucore.lib.modules"

if modPresent_Belts() then
  recipe =
  {
    type = "recipe",
    name = "fusion-transport-belt-to-ground-extended",
    subgroup = "fusion-belts",
    enabled = "false",
    energy_required = 1,
    ingredients = {{"express-transport-belt-to-ground-extended", 10}, {"alien-artifact", 1}},
    results = {{"fusion-transport-belt-to-ground-extended", 10}}
  }
  data:extend({recipe})
  recipe =
  {
    type = "recipe",
    name = "fusion-super-transport-belt-to-ground-extended",
    subgroup = "fusion-belts",
    enabled = "false",
    energy_required = 1,
    ingredients = {{"fusion-transport-belt-to-ground-extended", 10}, {"alien-artifact", 1}},
    results = {{"fusion-super-transport-belt-to-ground-extended", 10}}
  }
  data:extend({recipe})
end
