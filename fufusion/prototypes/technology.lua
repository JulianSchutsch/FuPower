require "config"

local function createFusionTechnology()
  data:extend(
  {
    {
      type = "technology",
      name = "fusion",
      icon = "__fupower__/graphics/icons/fusion-reactor.png",
      prerequisites = {"fusion-reactor-equipment"},
      effects =
      {
        {type = "unlock-recipe", recipe = "fusion-deuterium-extraction"},
        {type = "unlock-recipe", recipe = "fusion-reaction"},
        {type = "unlock-recipe", recipe = "fusion-reactor"},
        {type = "unlock-recipe", recipe = "fusion-steam-engine", },
        {type = "unlock-recipe", recipe = "fusion-heat-fluid-production"},
        {type = "unlock-recipe", recipe = "fusion-boiler"},
      },
      unit =
      {
        count=1200,
        ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}, {"alien-science-pack", 2}},
        time = 30
      },
      order = "d-a-a"
    },
  })
end

local function createAdvancedFusionTechnology()
  data:extend(
  {
    {
      type = "technology",
      name = "fusion-advanced",
      icon = "__fupower__/graphics/icons/fusion-advanced-reactor.png",
      prerequisites = {"fusion"},
      effects =
      {
        {type = "unlock-recipe", recipe = "fusion-advanced-reactor"},
        {type = "unlock-recipe", recipe = "fusion-advanced-steam-engine", },
        {type = "unlock-recipe", recipe = "fusion-advanced-boiler"},
        {type = "unlock-recipe", recipe = "fusion-advanced-heat-fluid-production", }
      },
      unit =
      {
        count=12000,
        ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}, {"alien-science-pack", 2}},
        time = 30
      },
      order = "d-a-a"
    },
  })
end

if config.fufusion.fusion==true then
  createFusionTechnology()
  if config.fufusion.advancedFusion==true then
    createAdvancedFusionTechnology()
  end
end