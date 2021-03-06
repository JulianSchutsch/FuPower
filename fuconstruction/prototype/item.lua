require "config"

local function createAlienConstructionRobotItem()
  data:extend(
  {
    {
      type = "item",
      name = "fusion-construction-robot",
      icon = "__fupower__/graphics/icons/fusion-construction-robot.png",
      flags = {"goes-to-quickbar"},
      subgroup = "fusion-robots",
      place_result = "fusion-construction-robot",
      order = "a",
      stack_size = 50
    },
    {
      type = "repair-tool",
      name = "fusion-repair-pack",
      icon = "__fupower__/graphics/icons/fusion-repair-pack.png",
      flags = {"goes-to-quickbar"},
      subgroup = "tool",
      order = "z",
      speed = 100,
      durability = 10000,
      stack_size = 50
    },
  })
end

local function createAlienLogisticRobotItem()
  data:extend(
  {
    {
      type = "item",
      name = "fusion-logistic-robot",
      icon = "__fupower__/graphics/icons/fusion-logistic-robot.png",
      flags = {"goes-to-quickbar"},
      subgroup = "fusion-robots",
      place_result = "fusion-logistic-robot",
      order = "a",
      stack_size = 50
    },
  })
end

if config.fuconstruction.alienConstructionRobot==true then
  createAlienConstructionRobotItem()
end

if config.fuconstruction.alienLogisticRobot==true then
  createAlienLogisticRobotItem()
end