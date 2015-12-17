require "config"

local function createCoalOilPlantItem()
  data:extend(
  {
    {
      type = "item",
      name = "fusion-oil-plant",
      icon = "__fupower__/graphics/icons/fusion-oil-plant.png",
      flags = {"goes-to-quickbar"},
      subgroup = "fusion-buildings",
      place_result = "fusion-oil-plant",
      order = "g",
      stack_size = 10
    },
  })
end
  
if config.fuoil.coalOilPlant==true then
  createCoalOilPlantItem()
end