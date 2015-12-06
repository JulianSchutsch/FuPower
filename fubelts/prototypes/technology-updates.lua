require "fucore.lib.modules"

if modPresent_Belts() then
  technology =
  {
    type = "technology",
    name = "fusion-transport-belt-to-ground-extended",
    icon = "__fupower__/graphics/icons/fusion-transport-belt-to-ground-extended.png",
    prerequisites = {"Belts+3"},
    effects = {{type = "unlock-recipe", recipe = "fusion-transport-belt-to-ground-extended"}},
    unit = { count=500, ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}, {"alien-science-pack", 2}}, time = 30 }
  }
  data:extend({technology})
  technology =
  {
    type = "technology",
    name = "fusion-super-transport-belt-to-ground-extended",
    icon = "__fupower__/graphics/icons/fusion-super-transport-belt-to-ground-extended.png",
    prerequisites = {"fusion-transport-belt-to-ground-extended"},
    effects = {{type = "unlock-recipe", recipe = "fusion-super-transport-belt-to-ground-extended"}},
    unit = { count=1000, ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}, {"alien-science-pack", 2}}, time = 30 }
  }
  data:extend({technology})
  technology =
  {
    type = "technology",
    name = "fusion-ultra-transport-belt-to-ground-extended",
    icon = "__fupower__/graphics/icons/fusion-super-transport-belt-to-ground-extended.png",
    prerequisites = {"fusion-super-transport-belt-to-ground-extended"},
    effects = {{type = "unlock-recipe", recipe = "fusion-ultra-transport-belt-to-ground-extended"}},
    unit = { count=2000, ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}, {"alien-science-pack", 2}}, time = 30 }
  }
  data:extend({technology})
end
