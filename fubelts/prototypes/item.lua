require "config"

local function createFusionBeltItem()
  data:extend(
  {
    {
      type = "item",
      name = "fusion-transport-belt",
      icon = "__fupower__/graphics/icons/fusion-transport-belt.png",
      flags = {"goes-to-quickbar"},
      subgroup = "fusion-buildings",
      place_result = "fusion-transport-belt",
      order = "i",
      stack_size = 50
    },
    {
      type = "item",
      name = "fusion-splitter",
      icon = "__fupower__/graphics/icons/fusion-splitter.png",
      flags = {"goes-to-quickbar"},
      subgroup = "fusion-buildings",
      place_result = "fusion-splitter",
      order = "j",
      stack_size = 50
    },
    {
      type = "item",
      name = "fusion-underground-belt",
      icon = "__fupower__/graphics/icons/fusion-transport-belt-to-ground.png",
      flags = {"goes-to-quickbar"},
      subgroup = "fusion-buildings",
      place_result = "fusion-underground-belt",
      order = "k",
      stack_size = 50
    },
  })
end

local function createFusionSuperBeltItem()
  data:extend(
  {
    {
      type = "item",
      name = "fusion-super-transport-belt",
      icon = "__fupower__/graphics/icons/fusion-super-transport-belt.png",
      flags = {"goes-to-quickbar"},
      subgroup = "fusion-buildings",
      place_result = "fusion-super-transport-belt",
      order = "e",
      stack_size = 50
    },
    {
      type = "item",
      name = "fusion-super-splitter",
      icon = "__fupower__/graphics/icons/fusion-super-splitter.png",
      flags = {"goes-to-quickbar"},
      subgroup = "fusion-buildings",
      place_result = "fusion-super-splitter",
      order = "f",
      stack_size = 50
    },
    {
      type = "item",
      name = "fusion-super-underground-belt",
      icon = "__fupower__/graphics/icons/fusion-super-transport-belt-to-ground.png",
      flags = {"goes-to-quickbar"},
      subgroup = "fusion-buildings",
      place_result = "fusion-super-underground-belt",
      order = "g",
      stack_size = 50
    },
  })
end

if config.fubelts.alienBelt==true then
  createFusionBeltItem()
  if config.fubelts.alienSuperBelt==true then
    createFusionSuperBeltItem()
  end
end