require "config"

local function createAlienConstructionRobotRecipe()
  data:extend(
  {
    {
      type = "recipe",
      name = "fusion-construction-robot",
      subgroup = "fusion-robots",
      enabled = false,
      energy_required = 5,
      icon="__fupower__/graphics/icons/fusion-construction-robot.png",
      ingredients ={{"construction-robot", 10}, {"steel-plate", 10}, {"processing-unit", 1}},
      result = "fusion-construction-robot"
    },
    {
      type = "recipe",
      name = "fusion-repair-pack",
      subgroup = "fusion-robots",
      enabled = false,
      energy_required = 5,
      icon="__fupower__/graphics/icons/fusion-repair-pack.png",
      ingredients ={{"repair-pack", 10}, {"steel-plate", 1}, {"advanced-circuit", 1}},
      result = "fusion-repair-pack"
    },
  })
end

if config.fuconstruction.alienConstructionRobot==true then
  createAlienConstructionRobotRecipe()
end