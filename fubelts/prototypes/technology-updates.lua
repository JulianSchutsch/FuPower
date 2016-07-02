require "config"
require "fucore.lib.modules"

local function createFusionBeltTechnologyUpdate()
  if config.fubelts.extendedBelts==true then
    local technology =
    {
      type = "technology",
      name = "fusion-underground-belt-extended",
      icon = "__fupower__/graphics/icons/fusion-underground-belt-extended.png",
      prerequisites = {"express-underground-belt-extended"},
      effects = {{type = "unlock-recipe", recipe = "fusion-underground-belt-extended"}},
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
      name = "fusion-super-underground-belt-extended",
      icon = "__fupower__/graphics/icons/fusion-super-underground-belt-extended.png",
      prerequisites = {"fusion-underground-belt-extended"},
      effects = {{type = "unlock-recipe", recipe = "fusion-super-underground-belt-extended"}},
      unit = { count=1000, ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}, {"alien-science-pack", 2}}, time = 30 }
    }
    data:extend({technology})
  end
end

local function createExtendedBeltsTechnology()
  local technology =
  {
    type = "technology",
    name = "underground-belt-extended",
    icon = "__fupower__/graphics/icons/underground-belt-extended.png",
    prerequisites = {"logistics"},
    effects = {{type = "unlock-recipe", recipe = "underground-belt-extended"}},
    unit = { count=30, ingredients = {{"science-pack-1", 1}}, time=15}
  }
  data:extend({technology})
  local technology =
  {
    type = "technology",
    name = "fast-transport-belt-to-ground-extended",
    icon = "__fupower__/graphics/icons/fast-underground-belt-extended.png",
    prerequisites = {"logistics-2"},
    effects = {{type = "unlock-recipe", recipe = "fast-underground-belt-extended"}},
    unit = { count=30, ingredients = {{"science-pack-2", 1}}, time=15}
  }
  data:extend({technology})
  local technology =
  {
    type = "technology",
    name = "express-underground-belt-extended",
    icon = "__fupower__/graphics/icons/express-underground-belt-extended.png",
    prerequisites = {"logistics-3"},
    effects = {{type = "unlock-recipe", recipe = "express-underground-belt-extended"}},
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