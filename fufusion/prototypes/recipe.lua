require "config"

local function createFusionRecipe()
  data:extend(
  {
    {
      type = "recipe-category",
      name = "fusion-fusion"
    },
    {
      type = "recipe",
      name = "fusion-heat-fluid-production",
      category = "chemistry",
      subgroup = "fusion-resources",
      enabled = false,
      energy_required = 0.1,
      ingredients = {{type="fluid", name="water", amount=100}},
      results = {{type="fluid", name="fusion-heat-fluid", amount=300}},
      icon="__fupower__/graphics/icons/fusion-heat-fluid.png",
    },
    {
      type = "recipe",
      name = "fusion-water",
      category = "chemistry",
      subgroup = "fusion-resources",
      enabled = false,
      energy_required = 0.1,
      ingredients = {},
      results = {{type="fluid", name="water", amount=300}},
      icon="__fupower__/graphics/icons/fusion-heat-fluid.png",
    },
    {
      type = "recipe",
      name = "fusion-deuterium-extraction",
      category = "chemistry",
      subgroup = "fusion-resources",
      enabled = false,
      energy_required = 5,
      ingredients = {{type="fluid", name="water", amount=100}},
      results= {{type="fluid", name="deuterium", amount=100}},
      icon="__fupower__/graphics/icons/fusion-deuterium.png"
    },
    {
      type = "recipe",
      name = "fusion-reaction",
      category = "fusion-fusion",
      subgroup = "fusion-resources",
      enabled = false,
      energy_required = 12,
      ingredients = {{type="fluid", name="deuterium", amount=1}},
      results= {{name="fusion-solar-fuel", amount=1}},
      icon="__fupower__/graphics/icons/fusion-sun.png",
    },
    {
      type = "recipe",
      name = "fusion-boiler",
      subgroup = "fusion-buildings",
      enabled = "false",
      energy_required = 5,
      ingredients = {{"steel-plate", 1000}, {"processing-unit", 100}, {"iron-plate", 500}},
      result = "fusion-boiler"
    },
    {
      type = "recipe",
      name = "fusion-steam-engine",
      subgroup = "fusion-buildings",
      enabled = "false",
      energy_required = 5,
      ingredients = {{"steel-plate", 200}, {"processing-unit", 50}, {"speed-module-3", 10}},
      result = "fusion-steam-engine"
    },
    {
      type = "recipe",
      name = "fusion-reactor",
      subgroup = "fusion-buildings",
      enabled = "false",
      energy_required = 5,
      ingredients = {{"processing-unit", 100}, {"effectivity-module-3", 50}, {"steel-plate", 200}},
      result = "fusion-reactor"
    },
  })
end

local function createAdvancedFusionRecipe()
  data:extend(
  {
    {
      type = "recipe",
      name = "fusion-advanced-heat-fluid-production",
      category = "chemistry",
      subgroup = "fusion-resources",
      enabled = false,
      energy_required = 0.1,
      ingredients = {{type="fluid", name="water", amount=100}},
      results = {{type="fluid", name="fusion-advanced-heat-fluid", amount=300}},
      icon="__fupower__/graphics/icons/fusion-advanced-heat-fluid.png",
    },
    {
      type = "recipe",
      name = "fusion-advanced-boiler",
      subgroup = "fusion-buildings",
      enabled = "false",
      energy_required = 5,
      ingredients = {{"steel-plate", 1000}, {"processing-unit", 1000}, {"fusion-boiler", 10}},
      result = "fusion-advanced-boiler"
    },
    {
      type = "recipe",
      name = "fusion-advanced-steam-engine",
      subgroup = "fusion-buildings",
      enabled = "false",
      energy_required = 5,
      ingredients = {{"fusion-steam-engine", 5}, {"processing-unit", 200}, {"productivity-module-3", 20}},
      result = "fusion-advanced-steam-engine"
    },
    {
      type = "recipe",
      name = "fusion-advanced-reactor",
      subgroup = "fusion-buildings",
      enabled = "false",
      energy_required = 5,
      ingredients = {{"fusion-reactor", 5}, {"processing-unit", 1000}, {"speed-module-3", 100}, {"steel-plate", 200}},
      result = "fusion-advanced-reactor"
    },
  })
end

local function createDeepWaterRecipe()
  data:extend(
  {
    {
      type = "recipe",
      name = "fusion-deep-water",
      category = "chemistry",
      subgroup = "fusion-resources",
      enabled = false,
      energy_required = 0.1,
      ingredients = {},
      results = {{type="fluid", name="water", amount=300}},
      icon="__base__/graphics/icons/fluid/water.png",
    },
  });
end

if config.fufusion.deepWater==true then
  createDeepWaterRecipe()
end

if config.fufusion.fusion==true then
  createFusionRecipe()
  if config.fufusion.advancedFusion==true then
    createAdvancedFusionRecipe()
  end
end