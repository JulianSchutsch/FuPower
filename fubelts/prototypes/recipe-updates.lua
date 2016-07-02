require "config"
require "fucore.lib.modules"

local function createFusionBeltRecipeUpdate()
  if config.fubelts.extendedBelts then
    local recipe =
    {
      type = "recipe",
      name = "fusion-underground-belt-extended",
      subgroup = "fusion-belts",
      enabled = "false",
      energy_required = 1,
      ingredients = {{"express-underground-belt-extended", 20}, {"alien-artifact", 30}, {"advanced-circuit", 60}},
      results = {{"fusion-underground-belt-extended", 10}}
    }
    data:extend({recipe})
  end
end

local function createFusionSuperBeltRecipeUpdate()
  if config.fubelts.extendedBelts then
    local recipe =
    {
      type = "recipe",
      name = "fusion-super-underground-belt-extended",
      subgroup = "fusion-belts",
      enabled = "false",
      energy_required = 1,
      ingredients = {{"fusion-underground-belt-extended", 20}, {"alien-artifact", 60}, {"processing-unit", 60}},
      results = {{"fusion-super-underground-belt-extended", 10}}
    }
    data:extend({recipe})
  end
end

local function createExtendedBeltRecipes()
  local recipe =
  {
    type = "recipe",
    name = "underground-belt-extended",
    subgroup = "fusion-belts",
    enabled = "false",
    energy_required = 1,
    ingredients = {{"underground-belt", 6}},
    results = {{"underground-belt-extended", 2}}
  }
  data:extend({recipe})
  local recipe =
  {
    type = "recipe",
    name = "fast-underground-belt-extended",
    subgroup = "fusion-belts",
    enabled = "false",
    energy_required = 1,
    ingredients = {{"fast-underground-belt", 6}},
    results = {{"fast-underground-belt-extended", 2}}
  }
  data:extend({recipe})
  local recipe =
  {
    type = "recipe",
    name = "express-underground-belt-extended",
    subgroup = "fusion-belts",
    enabled = "false",
    energy_required = 1,
    ingredients = {{"express-underground-belt", 6}},
    results = {{"express-underground-belt-extended", 2}}
  }
  data:extend({recipe})
end

if config.fubelts.extendedBelts==true then
  createExtendedBeltRecipes()
end

if config.fubelts.alienBelt==true then
  createFusionBeltRecipeUpdate()
  if config.fubelts.alienSuperBelt==true then
    createFusionSuperBeltRecipeUpdate()
  end
end
