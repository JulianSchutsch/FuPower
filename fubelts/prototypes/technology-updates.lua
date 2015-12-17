require "config"
require "fucore.lib.modules"

local function createFusionBeltTechnologyUpdate()
  if modPresent_Belts() then
    local technology =
    {
      type = "technology",
      name = "fusion-transport-belt-to-ground-extended",
      icon = "__fupower__/graphics/icons/fusion-transport-belt-to-ground-extended.png",
      prerequisites = {"Belts+3"},
      effects = {{type = "unlock-recipe", recipe = "fusion-transport-belt-to-ground-extended"}},
      unit = { count=500, ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}, {"alien-science-pack", 2}}, time = 30 }
    }
    data:extend({technology})
  end
end

local function createFusionSuperBeltTechnologyUpdate()
  if modPresent_Belts() then
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

if config.fubelts.alienBelt==true then
  createFusionBeltTechnologyUpdate()
  if config.fubelts.alienSuperBelt==true then
    createFusionSuperBeltTechnologyUpdate()
  end
end