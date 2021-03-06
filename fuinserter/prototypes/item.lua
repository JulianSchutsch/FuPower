require "config"

local function createFastLongInserterItem()
  data:extend(
  {
    {
      type = "item",
      name = "fast-long-handed-inserter",
      icon = "__fupower__/graphics/icons/fast-long-handed-inserter.png",
      flags = {"goes-to-quickbar"},
      subgroup = "fusion-inserters",
      place_result = "fast-long-handed-inserter",
      order = "a",
      stack_size = 50,
    },
  })
end

local function createFusionInserterItem()
  data:extend(
  {
    {
      type = "item",
      name = "fusion-inserter",
      icon = "__fupower__/graphics/icons/fusion-inserter.png",
      flags = {"goes-to-quickbar"},
      subgroup = "fusion-inserters",
      place_result = "fusion-inserter",
      order = "b",
      stack_size = 50,
    },
  })
end

local function createFusionSuperInserterItem()
  data:extend(
  {
    {
      type = "item",
      name = "fusion-super-inserter",
      icon = "__fupower__/graphics/icons/fusion-super-inserter.png",
      flags = {"goes-to-quickbar"},
      subgroup = "fusion-inserters",
      place_result = "fusion-super-inserter",
      order = "c",
      stack_size = 50,
    },
  })
end

if config.fuinserter.fastLongInserter==true then
  createFastLongInserterItem()
end

if config.fuinserter.alienInserter==true then
  createFusionInserterItem()
  if config.fuinserter.alienSuperInserter==true then
    createFusionSuperInserterItem()
  end
end