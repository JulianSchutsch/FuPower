require "config"
 
local function createImprovedDrillItem()
  data:extend(
  {
    {
      type = "item",
      name = "fusion-minidrill",
      icon = "__fupower__/graphics/icons/fusion-minidrill.png",
      flags = {"goes-to-quickbar"},
      subgroup = "fusion-buildings",
      place_result = "fusion-minidrill",
      order = "j",
      stack_size = 50
    },
  })
end

local function createAlienDrillItem()
  data:extend(
  {
    {
      type = "item",
      name = "fusion-drill",
      icon = "__fupower__/graphics/icons/fusion-drill.png",
      flags = {"goes-to-quickbar"},
      subgroup = "fusion-buildings",
      place_result = "fusion-drill",
      order = "j",
      stack_size = 50
    },
  })
end

if config.fudrill.improvedDrill==true then
  createImprovedDrillItem()
  if config.fudrill.alienDrill==true then
    createAlienDrillItem()
  end
end