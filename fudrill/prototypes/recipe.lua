require "config"

local function createImprovedDrillRecipe()
  data:extend(
  {
    {
      type = "recipe",
      name = "fusion-minidrill",
      subgroup = "fusion-buildings",
      enabled = "false",
      energy_required = 5,
      ingredients = {{"basic-mining-drill", 4}, {"alien-artifact", 10}, {"productivity-module", 10}, {"steel-plate", 10}},
      result = "fusion-minidrill"
    },
  })
end

local function createAlienDrillRecipe()
  data:extend(
  {
    {
      type = "recipe",
      name = "fusion-drill",
      subgroup = "fusion-buildings",
      enabled = "false",
      energy_required = 5,
      ingredients = {{"fusion-minidrill", 25}, {"processing-unit", 200}, {"productivity-module-3", 25}, {"steel-plate", 200}},
      result = "fusion-drill"
    },
  })
end

if config.fudrill.improvedDrill==true then
  createImprovedDrillRecipe()
  if config.fudrill.alienDrill==true then
    createAlienDrillRecipe()
  end
end