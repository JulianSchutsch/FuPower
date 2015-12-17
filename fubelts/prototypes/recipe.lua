require "config"

local function createFusionBeltRecipe()
  data:extend(
  {
    {
      type = "recipe",
      name = "fusion-transport-belt",
      subgroup = "fusion-belts",
      enabled = "false",
      energy_required = 1,
      ingredients = {{"express-transport-belt", 20}, {"alien-artifact", 5}, {"advanced-circuit", 5}},
      results = {{"fusion-transport-belt", 10}}
    },
    {
      type = "recipe",
      name = "fusion-splitter",
      subgroup = "fusion-belts",
      enabled = "false",
      energy_required = 1,
      ingredients = {{"express-splitter", 20}, {"alien-artifact", 5}, {"advanced-circuit", 10}},
      results = {{"fusion-splitter", 10}}
    },
    {
      type = "recipe",
      name = "fusion-transport-belt-to-ground",
      subgroup = "fusion-belts",
      enabled = "false",
      energy_required = 1,
      ingredients = {{"express-transport-belt-to-ground", 20}, {"alien-artifact", 5}, {"advanced-circuit", 40}},
      results = {{"fusion-transport-belt-to-ground", 10}}
    },
  })
end

local function createFusionSuperBeltRecipe()
  data:extend(
  {
    {
      type = "recipe",
      name = "fusion-super-transport-belt",
      subgroup = "fusion-belts",
      enabled = "false",
      energy_required = 1,
      ingredients = {{"fusion-transport-belt", 20}, {"alien-artifact", 10}, {"processing-unit", 10}},
      results = {{"fusion-super-transport-belt", 10}}
    },
    {
      type = "recipe",
      name = "fusion-super-splitter",
      subgroup = "fusion-belts",
      enabled = "false",
      energy_required = 1,
      ingredients = {{"fusion-splitter", 20}, {"alien-artifact", 20}, {"processing-unit", 20}},
      results = {{"fusion-super-splitter", 10}}
    },
    {
      type = "recipe",
      name = "fusion-super-transport-belt-to-ground",
      subgroup = "fusion-belts",
      enabled = "false",
      energy_required = 1,
      ingredients = {{"fusion-transport-belt-to-ground", 20}, {"alien-artifact", 40}, {"processing-unit", 40}},
      results = {{"fusion-super-transport-belt-to-ground", 10}}
    },
  })
end

if config.fubelts.alienBelt==true then
  createFusionBeltRecipe()
  if config.fubelts.alienSuperBelt==true then
    createFusionSuperBeltRecipe()
  end
end