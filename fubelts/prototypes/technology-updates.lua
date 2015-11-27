require "fucore.lib.modules"

if modPresent_Belts() then
  data:extend(
  {
    type = "technology",
    name = "fusion-transport-belt-to-ground-extended",
    icon = "__fupower__/graphics/icons/alien-transport-belt-to-ground-extended.png",
    prerequisites = {"laser-turret-speed-5", "laser-turret-damage-5"},
    effects = {{type = "unlock-recipe", recipe = "fusion-transport-belt-to-ground-extended"}},
    unit = { count=100, ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}, {"alien-science-pack", 2}}, time = 30 }
  })
end
