require "fucore.lib.entity"

ignore = {fluid_boxes=0}

coalOilPlant = clone(findEntry(data, "assembling-machine","chemical-plant"))

coalOilPlant.name = "fusion-oil-plant"
coalOilPlant.crafting_categories = {"fusion-oil"}
coalOilPlant.energy_usage = "50MW"
gsubMatch(coalOilPlant, "%.png", "__base__", "__fupower__", ignore)
gsubMatch(coalOilPlant, "%.png", "chemical%-plant", "fusion-oil-plant", ignore)
coalOilPlant.minable.result = coalOilPlant.name

data:extend({coalOilPlant})
