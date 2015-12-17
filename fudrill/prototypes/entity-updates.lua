require("fucore.lib.entity")

local function createImprovedDrill()
  local ignoreKeys = {radius_visualisation_picture=0}

  local improvedDrill = clone(findEntry(data, "mining-drill", "basic-mining-drill"))
  improvedDrill.name = "fusion-minidrill"
  improvedDrill.energy_usage = "1MW"
  improvedDrill.mining_speed = 2
  improvedDrill.mining_power = 5
  improvedDrill.resource_searching_radius = 5.49
  gsubFilter(improvedDrill, ".png", "__base__", "__fupower__", ignoreKeys)
  gsubFilter(improvedDrill, ".png", "basic%-mining%-drill", "fusion-minidrill", ignoreKeys)
  improvedDrill.minable.result = improvedDrill.name

  data:extend({improvedDrill})
end

local function createAlienDrill()
  local ignoreKeys = {radius_visualisation_picture=0}

  local alienDrill = clone(findEntry(data, "mining-drill", "basic-mining-drill"))
  alienDrill.name = "fusion-drill"
  alienDrill.energy_usage = "50MW"
  alienDrill.mining_speed = 100
  alienDrill.mining_power = 50
  alienDrill.resource_searching_radius = 15.49
  gsubFilter(alienDrill, ".png", "__base__", "__fupower__", ignoreKeys)
  gsubFilter(alienDrill, ".png", "basic%-mining%-drill", "fusion-drill", ignoreKeys)
  alienDrill.minable.result = alienDrill.name

  data:extend({alienDrill})
end

if config.fudrill.improvedDrill==true then
  createImprovedDrill()
  if config.fudrill.alienDrill==true then
    createAlienDrill()
  end
end