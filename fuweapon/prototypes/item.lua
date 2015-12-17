require "config"

local function createFusionLaserTurretItem()
  data:extend(
  {
    {
      type = "item",
      name = "fusion-laser-turret",
      icon = "__fupower__/graphics/icons/fusion-laser-turret.png",
      flags = {"goes-to-quickbar"},
      subgroup = "fusion-buildings",
      place_result = "fusion-laser-turret",
      order = "h",
      stack_size = 50
    },
  })
end

local function createSecurityZoneItem()
  data:extend(
  {
    {
      type = "item",
      name = "fusion-area-control",
      icon = "__fupower__/graphics/icons/fusion-area-control.png",
      flags = {"goes-to-quickbar"},
      subgroup = "fusion-buildings",
      place_result = "fusion-area-control",
      order = "i",
      stack_size = 50
    },
  })
end

local function createMobileSecurityZoneItem()
  data:extend(
  {
    {
      type = "item",
      name = "fusion-tank",
      icon = "__fupower__/graphics/icons/fusion-tank.png",
      flags = {"goes-to-quickbar"},
      subgroup = "fusion-train",
      place_result = "fusion-tank",
      order = "z",
      stack_size = 10
    },
  })
end

if config.fuweapon.alienLaserTurret==true then
  createFusionLaserTurretItem()
end

if config.fuweapon.securityZone==true then
  createSecurityZoneItem()
end

if config.fuweapon.mobileSecurityZone==true then
  createMobileSecurityZoneItem()
end