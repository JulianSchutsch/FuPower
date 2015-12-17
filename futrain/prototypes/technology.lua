require "config"

local function createFusionTrainTechnology()
  data:extend(
  {
    {
      type = "technology",
      name = "fusion-train",
      icon = "__fupower__/graphics/icons/fusion-locomotive.png",
      prerequisites = {"alien-technology", "railway", "logistics-3"},
      effects =
      {
        {type = "unlock-recipe", recipe = "fusion-locomotive"},
        {type = "unlock-recipe", recipe = "fusion-wagon"},
      },
      unit =
      {
        count=600,
        ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}, {"alien-science-pack", 2}},
        time = 30
      },
      order = "d-a-a"
    },
  })
end

if config.futrain.alienTrain==true then
  createFusionTrainTechnology()
end