require "config"

local function createCoalOilPlantTechnology()
  data:extend(
  {
    {
      type = "technology",
      name = "fusion-oil-production",
      icon = "__fupower__/graphics/icons/fusion-oil-plant.png",
      prerequisites = {"fusion"},
      effects =
      {
        {type = "unlock-recipe", recipe = "fusion-oil-production"},
        {type = "unlock-recipe", recipe = "fusion-oil-plant"}
      },
      unit =
      {
        count=300,
        ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}},
        time = 30
      }
    },
  })
end

if config.fuoil.coalOilPlant==true then
  createCoalOilPlantTechnology()
end