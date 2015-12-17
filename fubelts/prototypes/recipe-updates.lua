require "config"
require "fucore.lib.modules"

local function createFusionBeltRecipeUpdate()
  if modPresent_Belts() then
    local recipe =
    {
      type = "recipe",
      name = "fusion-transport-belt-to-ground-extended",
      subgroup = "fusion-belts",
      enabled = "false",
      energy_required = 1,
      ingredients = {{"express-transport-belt-to-ground-extended", 20}, {"alien-artifact", 30}, {"advanced-circuit", 60}},
      results = {{"fusion-transport-belt-to-ground-extended", 10}}
    }
    data:extend({recipe})
  end
end

local function createFusionSuperBeltRecipeUpdate()
  if modPresent_Belts() then
    local recipe =
    {
      type = "recipe",
      name = "fusion-super-transport-belt-to-ground-extended",
      subgroup = "fusion-belts",
      enabled = "false",
      energy_required = 1,
      ingredients = {{"fusion-transport-belt-to-ground-extended", 20}, {"alien-artifact", 60}, {"processing-unit", 60}},
      results = {{"fusion-super-transport-belt-to-ground-extended", 10}}
    }
    data:extend({recipe})
  end
end

if config.fubelts.alienBelt==true then
  createFusionBeltRecipeUpdate()
  if config.fubelts.alienSuperBelt==true then
    createFusionSuperBeltRecipeUpdate()
  end
end
