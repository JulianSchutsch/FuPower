require "fucore.lib.entity"

coalOilPlant = clone(findEntry(data, "assembling-machine","chemical-plant"))

coalOilPlant.name = "fusion-oil-plant"
coalOilPlant.crafting_categories = {"fusion-oil"}
coalOilPlant.energy_usage = "50MW"
coalOilPlant.minable.result = coalOilPlant.name

data:extend({coalOilPlant})
