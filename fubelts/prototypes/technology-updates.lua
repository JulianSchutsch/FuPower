require "config"
require "fucore.lib.modules"

local function createFusionBeltTechnologyUpdate()
  if config.fubelts.extendedBelts==true then
    local technology =
    {
      type = "technology",
      name = "fusion-transport-belt-to-ground-extended",
      icon = "__fupower__/graphics/icons/fusion-transport-belt-to-ground-extended.png",
      prerequisites = {"express-transport-belt-to-ground-extended"},
      effects = {{type = "unlock-recipe", recipe = "fusion-transport-belt-to-ground-extended"}},
      unit = { count=500, ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}, {"alien-science-pack", 2}}, time = 30 }
    }
    data:extend({technology})
  end
end

local function createFusionSuperBeltTechnologyUpdate()
  if config.fubelts.extendedBelts==true then
    local technology =
    {
      type = "technology",
      name = "fusion-super-transport-belt-to-ground-extended",
      icon = "__fupower__/graphics/icons/fusion-super-transport-belt-to-ground-extended.png",
      prerequisites = {"fusion-transport-belt-to-ground-extended"},
      effects = {{type = "unlock-recipe", recipe = "fusion-super-transport-belt-to-ground-extended"}},
      unit = { count=1000, ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}, {"alien-science-pack", 2}}, time = 30 }
    }
    data:extend({technology})
  end
end

local function createExtendedBeltsTechnology()
  local technology =
  {
    type = "technology",
    name = "basic-transport-belt-to-ground-extended",
    icon = "__fupower__/graphics/icons/basic-transport-belt-to-ground-extended.png",
    prerequisites = {"logistics"},
    effects = {{type = "unlock-recipe", recipe = "basic-transport-belt-to-ground-extended"}},
    unit = { count=30, ingredients = {{"science-pack-1", 1}}, time=15}
  }
  data:extend({technology})
  local technology =
  {
    type = "technology",
    name = "fast-transport-belt-to-ground-extended",
    icon = "__fupower__/graphics/icons/fast-transport-belt-to-ground-extended.png",
    prerequisites = {"logistics-2"},
    effects = {{type = "unlock-recipe", recipe = "fast-transport-belt-to-ground-extended"}},
    unit = { count=30, ingredients = {{"science-pack-2", 1}}, time=15}
  }
  data:extend({technology})
  local technology =
  {
    type = "technology",
    name = "express-transport-belt-to-ground-extended",
    icon = "__fupower__/graphics/icons/express-transport-belt-to-ground-extended.png",
    prerequisites = {"logistics-3"},
    effects = {{type = "unlock-recipe", recipe = "express-transport-belt-to-ground-extended"}},
    unit = { count=30, ingredients = {{"science-pack-3", 1}}, time=20}
  }
  data:extend({technology})
end

if config.fubelts.extendedBelts==true then
  createExtendedBeltsTechnology()
end

if config.fubelts.alienBelt==true then
  createFusionBeltTechnologyUpdate()
  if config.fubelts.alienSuperBelt==true then
    createFusionSuperBeltTechnologyUpdate()
  end
end