require "config"
require "fucore.lib.modules"

local function createFusionBeltItemUpdate()
  if config.fubelts.extendedBelts==true then
    local item =
    {
      type = "item",
      name = "fusion-underground-belt-extended",
      icon = "__fupower__/graphics/icons/fusion-transport-belt-to-ground-extended.png",
      flags = {"goes-to-quickbar"},
      subgroup = "fusion-buildings",
      place_result = "fusion-underground-belt-extended",
      order = "l",
      stack_size = 50
    }
    data:extend({item})
  end
end

local function createFusionSuperBeltItemUpdate()
  if config.fubelts.extendedBelts==true then
    local item =
    {
      type = "item",
      name = "fusion-super-underground-belt-extended",
      icon = "__fupower__/graphics/icons/fusion-super-transport-belt-to-ground-extended.png",
      flags = {"goes-to-quickbar"},
      subgroup = "fusion-buildings",
      place_result = "fusion-super-underground-belt-extended",
      order = "h",
      stack_size = 50
    }
    data:extend({item})
  end
end

local function createExtendedBeltItemUpdate()
  local item =
  {
    type = "item",
    name = "underground-belt-extended",
    icon = "__fupower__/graphics/icons/basic-transport-belt-to-ground-extended.png",
    flags = {"goes-to-quickbar"},
    subgroup = "fusion-buildings",
    place_result = "underground-belt-extended",
    order = "m",
    stack_size = 50
  }
  data:extend({item})
  local item =
  {
    type = "item",
    name = "fast-underground-belt-extended",
    icon = "__fupower__/graphics/icons/fast-transport-belt-to-ground-extended.png",
    flags = {"goes-to-quickbar"},
    subgroup = "fusion-buildings",
    place_result = "fast-underground-belt-extended",
    order = "n",
    stack_size = 50
  }
  data:extend({item})
  local item =
  {
    type = "item",
    name = "express-underground-belt-extended",
    icon = "__fupower__/graphics/icons/express-transport-belt-to-ground-extended.png",
    flags = {"goes-to-quickbar"},
    subgroup = "fusion-buildings",
    place_result = "express-underground-belt-extended",
    order = "o",
    stack_size = 50
  }
  data:extend({item})
end

if config.fubelts.extendedBelts==true then
  createExtendedBeltItemUpdate()
end

if config.fubelts.alienBelt==true then
  createFusionBeltItemUpdate()
  if config.fubelts.alienSuperBelt==true then
    createFusionSuperBeltItemUpdate()
  end
end