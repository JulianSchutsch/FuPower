require "config"
require "fucore.lib.entity"

local function createCoalOilPlant()
  local ignore = {fluid_boxes=0}

  local coalOilPlant = clone(findEntry(data, "assembling-machine", "chemical-plant"))
  coalOilPlant.name = "fusion-oil-plant"
  coalOilPlant.crafting_categories = {"fusion-oil"}
  coalOilPlant.energy_usage = "50MW"
  gsubMatch(coalOilPlant, "%.png", "__base__", "__fupower__", ignore)
  gsubMatch(coalOilPlant, "%.png", "chemical%-plant", "fusion-oil-plant", ignore)
  coalOilPlant.minable.result = coalOilPlant.name
  data:extend({coalOilPlant})
end

if config.fuoil.coalOilPlant==true then
  createCoalOilPlant()
end