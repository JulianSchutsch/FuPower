require "config"

local function createFusionLaserTurretTechnology()
  data:extend(
  {
    {
      type = "technology",
      name = "fusion-laser-turret",
      icon = "__fupower__/graphics/icons/fusion-laser-turret.png",
      prerequisites = {"laser-turret-speed-5", "laser-turret-damage-5"},
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "fusion-laser-turret"
        }
      },
      unit =
      {
        count=1000,
        ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}, {"alien-science-pack", 2}},
        time = 30
      }
    },
  })
end

local function createSecurityZoneTechnology()
  data:extend(
  {
    {
      type = "technology",
      name = "fusion-area-control",
      icon = "__fupower__/graphics/icons/fusion-area-control.png",
      prerequisites = {"alien-technology"},
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "fusion-area-control"
        }
      },
      unit =
      {
        count=5000,
        ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}, {"alien-science-pack", 2}},
        time = 30
      }
    },
  })
end

local function createMobileSecurityZoneTechnology()
  data:extend(
  {
    {
      type = "technology",
      name = "fusion-tank",
      icon = "__fupower__/graphics/icons/fusion-tank.png",
      prerequisites = {"alien-technology"},
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "fusion-tank"
        }
      },
      unit =
      {
        count=2000,
        ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}, {"alien-science-pack", 2}},
        time = 30
      }
    },
  })
end

if config.fuweapon.alienLaserTurret==true then
  createFusionLaserTurretTechnology()
end

if config.fuweapon.securityZone==true then
  createSecurityZoneTechnology()
end

if config.fuweapon.mobileSecurityZone==true then
  createMobileSecurityZoneTechnology()
end
