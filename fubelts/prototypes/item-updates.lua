require "config"
require "fucore.lib.modules"

local function createFusionBeltItemUpdate()
  if config.fubelts.extendedBelts==true then
    local item =
    {
      type = "item",
      name = "fusion-transport-belt-to-ground-extended",
      icon = "__fupower__/graphics/icons/fusion-transport-belt-to-ground-extended.png",
      flags = {"goes-to-quickbar"},
      subgroup = "fusion-buildings",
      place_result = "fusion-transport-belt-to-ground-extended",
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
      name = "fusion-super-transport-belt-to-ground-extended",
      icon = "__fupower__/graphics/icons/fusion-super-transport-belt-to-ground-extended.png",
      flags = {"goes-to-quickbar"},
      subgroup = "fusion-buildings",
      place_result = "fusion-super-transport-belt-to-ground-extended",
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
    name = "basic-transport-belt-to-ground-extended",
    icon = "__fupower__/graphics/icons/basic-transport-belt-to-ground-extended.png",
    flags = {"goes-to-quickbar"},
    subgroup = "fusion-buildings",
    place_result = "basic-transport-belt-to-ground-extended",
    order = "m",
    stack_size = 50
  }
  data:extend({item})
  local item =
  {
    type = "item",
    name = "fast-transport-belt-to-ground-extended",
    icon = "__fupower__/graphics/icons/fast-transport-belt-to-ground-extended.png",
    flags = {"goes-to-quickbar"},
    subgroup = "fusion-buildings",
    place_result = "fast-transport-belt-to-ground-extended",
    order = "n",
    stack_size = 50
  }
  data:extend({item})
  local item =
  {
    type = "item",
    name = "express-transport-belt-to-ground-extended",
    icon = "__fupower__/graphics/icons/express-transport-belt-to-ground-extended.png",
    flags = {"goes-to-quickbar"},
    subgroup = "fusion-buildings",
    place_result = "express-transport-belt-to-ground-extended",
    order = "o",
    stack_size = 50
  }
  data:extend({item})
end

print("Item Updates")
if config.fubelts.extendedBelts==true then
  print("Create Extended Belts items")
  createExtendedBeltItemUpdate()
end

if config.fubelts.alienBelt==true then
  createFusionBeltItemUpdate()
  if config.fubelts.alienSuperBelt==true then
    createFusionSuperBeltItemUpdate()
  end
end