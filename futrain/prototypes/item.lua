require "config"

local function createFusionTrainItem()
  data:extend(
  {
    {
      type = "item",
      name = "fusion-locomotive",
      icon = "__fupower__/graphics/icons/fusion-locomotive.png",
      flags = {"goes-to-main-inventory"},
      subgroup = "fusion-train",
      place_result = "fusion-locomotive",
      order = "c[solid-fuel]",
      stack_size = 2
    },
    {
      type = "item",
      name = "fusion-wagon",
      icon = "__fupower__/graphics/icons/fusion-wagon.png",
      flags = {"goes-to-main-inventory"},
      subgroup = "fusion-train",
      place_result = "fusion-wagon",
      order = "c[solid-fuel]",
      stack_size = 10
    },
  })
end

if config.futrain.alienTrain==true then
  createFusionTrainItem()
end