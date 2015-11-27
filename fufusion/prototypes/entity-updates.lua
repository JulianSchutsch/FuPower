require "fucore.lib.entity"

boiler = clone(findEntry(data, "boiler", "boiler"))

boiler.name = "fusion-boiler"
boiler.energy_consumption = "100MW"
boiler.minable.result = boiler.name


data:extend({boiler})

steamEngine = clone(findEntry(data, "generator", "steam-engine"))

steamEngine.name = "fusion-steam-engine"
steamEngine.fluid_usage_per_tick = 4
steamEngine.minable.result = steamEngine.name

data:extend({steamEngine})

fusionReactor = clone(findEntry(data, "assembling-machine", "oil-refinery"))
fusionReactor.name = "fusion-reactor"
fusionReactor.crafting_categories = {"fusion-fusion"}
fusionReactor.energy_usage = "1MW"
fusionReactor.minable.result = fusionReactor.name

data:extend({fusionReactor})