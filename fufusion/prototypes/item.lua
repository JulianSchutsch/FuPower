require "config"

local function createFusionItem()
  data:extend(
  {
    {
      type = "item",
      name = "fusion-solar-fuel",
      icon = "__fupower__/graphics/icons/fusion-sun.png",
      flags = {"goes-to-main-inventory"},
      fuel_value = "2400MJ",
      subgroup = "fusion-resources",
      order = "c[solid-fuel]",
      stack_size = 50
    },
    {
      type = "item",
      name = "fusion-boiler",
      icon = "__fupower__/graphics/icons/fusion-boiler.png",
      flags = {"goes-to-quickbar"},
      subgroup = "fusion-buildings",
      place_result = "fusion-boiler",
      order = "e",
      stack_size = 10
    },
    {
      type = "item",
      name = "fusion-steam-engine",
      icon = "__fupower__/graphics/icons/fusion-steam-engine.png",
      flags = {"goes-to-quickbar"},
      subgroup = "fusion-buildings",
      place_result = "fusion-steam-engine",
      order = "f",
      stack_size = 10
    },
    {
      type = "item",
      name = "fusion-reactor",
      icon = "__fupower__/graphics/icons/fusion-reactor.png",
      flags = {"goes-to-quickbar"},
      subgroup = "fusion-buildings",
      place_result = "fusion-reactor",
      order = "d",
      stack_size = 10
    },
  })
end

local function createAdvancedFusionItem()
  data:extend(
  {
    {
      type = "item",
      name = "fusion-advanced-boiler",
      icon = "__fupower__/graphics/icons/fusion-advanced-boiler.png",
      flags = {"goes-to-quickbar"},
      subgroup = "fusion-buildings",
      place_result = "fusion-advanced-boiler",
      order = "b",
      stack_size = 10
    },
    {
      type = "item",
      name = "fusion-advanced-steam-engine",
      icon = "__fupower__/graphics/icons/fusion-advanced-steam-engine.png",
      flags = {"goes-to-quickbar"},
      subgroup = "fusion-buildings",
      place_result = "fusion-advanced-steam-engine",
      order = "c",
      stack_size = 10
    },
    {
      type = "item",
      name = "fusion-advanced-reactor",
      icon = "__fupower__/graphics/icons/fusion-advanced-reactor.png",
      flags = {"goes-to-quickbar"},
      subgroup = "fusion-buildings",
      place_result = "fusion-advanced-reactor",
      order = "a",
      stack_size = 10
    },
  })
end

if config.fufusion.fusion==true then
  createFusionItem()
  if config.fufusion.advancedFusion==true then
    createAdvancedFusionItem()
  end
end