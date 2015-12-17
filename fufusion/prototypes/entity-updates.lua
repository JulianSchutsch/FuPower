require "config"
require "fucore.lib.entity"

local function createFusion()
  local ignoreFilter = {fluid_box=0, fluid_boxes=0}
  do
    local boiler = clone(findEntry(data, "boiler", "boiler"))
    boiler.name = "fusion-boiler"
    boiler.energy_consumption = "100MW"
    boiler.burner.emissions = 0
    gsubFilter(boiler, ".png", "__base__", "__fupower__", ignoreFilter)
    gsubFilter(boiler, ".png", "boiler", "fusion-boiler", ignoreFilter)
    boiler.minable.result = boiler.name
    data:extend({boiler})
  end

  do
    local steamEngine = clone(findEntry(data, "generator", "steam-engine"))
    steamEngine.name = "fusion-steam-engine"
    steamEngine.fluid_usage_per_tick = 4
    gsubFilter(steamEngine, ".png", "__base__", "__fupower__", ignoreFilter)
    gsubFilter(steamEngine, ".png", "steam%-engine", "fusion-steam-engine", ignoreFilter)
    steamEngine.minable.result = steamEngine.name
    data:extend({steamEngine})
  end

  do
    local fusionReactor = clone(findEntry(data, "assembling-machine", "oil-refinery"))
    fusionReactor.name = "fusion-reactor"
    fusionReactor.crafting_categories = {"fusion-fusion"}
    fusionReactor.energy_usage = "1MW"
    fusionReactor.minable.result = fusionReactor.name
    gsubFilter(fusionReactor, ".png", "__base__", "__fupower__", ignoreFilter)
    gsubFilter(fusionReactor, ".png", "oil%-refinery", "fusion-reactor", ignoreFilter)
    data:extend({fusionReactor})
  end
end

local function createAdvancedFusion()
  local ignoreFilter = {fluid_box=0, fluid_boxes=0}
  do
    local advancedBoiler = clone(findEntry(data, "boiler", "fusion-boiler"))
    advancedBoiler.name = "fusion-advanced-boiler"
    advancedBoiler.energy_consumption = "1000MW"
    advancedBoiler.burner.emissions = 0
    gsubFilter(advancedBoiler, ".png", "fusion%-boiler", "fusion-advanced-boiler", ignoreFilter)
    advancedBoiler.minable.result = advancedBoiler.name
    data:extend({advancedBoiler})
  end

  do
    local advancedSteamEngine = clone(findEntry(data, "generator", "fusion-steam-engine"))
    advancedSteamEngine.name = "fusion-advanced-steam-engine"
    advancedSteamEngine.fluid_usage_per_tick = 40
    gsubFilter(advancedSteamEngine, ".png", "fusion%-steam%-engine", "fusion-advanced-steam-engine", ignoreFilter)
    advancedSteamEngine.minable.result = advancedSteamEngine.name
    data:extend({advancedSteamEngine})
  end

  do
    local fusionAdvancedReactor = clone(findEntry(data, "assembling-machine", "fusion-reactor"))
    fusionAdvancedReactor.name = "fusion-advanced-reactor"
    fusionAdvancedReactor.crafting_speed = 10
    fusionAdvancedReactor.energy_usage = "8MW"
    gsubFilter(fusionAdvancedReactor, ".png", "fusion%-reactor", "fusion-advanced-reactor", ignoreFilter)
    fusionAdvancedReactor.minable.result = fusionAdvancedReactor.name
    data:extend({fusionAdvancedReactor})
  end
end

if config.fufusion.fusion==true then
  createFusion()
  if config.fufusion.advancedFusion==true then
    createAdvancedFusion()
  end
end