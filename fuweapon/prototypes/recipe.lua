require "config"

local function createFusionLaserTurretRecipe()
  data:extend(
  {
    {
      type = "recipe",
      name = "fusion-laser-turret",
      subgroup = "fusion-buildings",
      enabled = "false",
      energy_required = 5,
      ingredients = {{"laser-turret", 4}, {"productivity-module-3", 2}, {"effectivity-module-3", 2}, {"speed-module-3", 2}},
      result="fusion-laser-turret"
    },
  })
end

local function createSecurityZoneRecipe()
  data:extend(
  {
    {
      type = "recipe",
      name = "fusion-area-control",
      subgroup = "fusion-buildings",
      enabled = "false",
      energy_required = 5,
      ingredients = {{"radar", 64}, {"productivity-module-3", 250}, {"effectivity-module-3", 250}, {"speed-module-3", 250}, {"laser-turret", 1000}},
      result="fusion-area-control"
    },
  })
end

local function createMobileSecurityZoneRecipe()
  data:extend(
  {
    {
      type = "recipe",
      name = "fusion-tank",
      subgroup = "fusion-train",
      enabled = "false",
      energy_required = 5,
      ingredients = {{"tank", 256}, {"productivity-module-3", 100}, {"effectivity-module-3", 100}, {"speed-module-3", 100}, {"steel-plate", 500}, {"laser-turret", 100}},
      result="fusion-tank"
    },
  })
end

if config.fuweapon.alienLaserTurret==true then
  createFusionLaserTurretRecipe()
end

if config.fuweapon.securityZone==true then
  createSecurityZoneRecipe()
end

if config.fuweapon.mobileSecurityZone==true then
  createMobileSecurityZoneRecipe()
end