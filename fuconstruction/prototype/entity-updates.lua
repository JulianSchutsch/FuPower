require "fucore.lib.entity"
require "config"

local function createAlienConstructor()
  ignoreFilter = {smoke=0, sparks=0}

  local alienConstructor = clone(findEntry(data, "construction-robot", "construction-robot"))
  alienConstructor.name = "fusion-construction-robot"
  alienConstructor.speed = 0.6
  alienConstructor.max_health = 1500
  alienConstructor.max_energy = "6MW"
  alienConstructor.energy_per_move = "0.1kJ"
  alienConstructor.repair_pack = "fusion-repair-pack"
  gsubFilter(alienConstructor, ".png", "__base__", "__fupower__", ignoreFilter)
  gsubFilter(alienConstructor, ".png", "construction%-robot", "fusion-construction-robot", ignoreFilter)
  alienConstructor.minable.result = "fusion-construction-robot"
  data:extend({alienConstructor})
end

local function createAlienLogisticRobot()
  ignoreFilter = {smoke=0, sparks=0}
  
  local alienRobot = clone(findEntry(data, "logistic-robot", "logistic-robot"))
  alienRobot.name = "fusion-logistic-robot"
  alienRobot.speed = 0.6
  alienRobot.max_health = 1500
  alienRobot.max_energy = "6MW"
  alienRobot.max_payload_size = 16
  alienRobot.energy_per_move = "0.1KJ"
  gsubFilter(alienRobot, ".png", "__base__", "__fupower__", ignoreFilter)
  gsubFilter(alienRobot, ".png", "logistic%-robot", "fusion-logistic-robot", ignoreFilter)
  alienRobot.minable.result = "fusion-logistic-robot"
  data:extend({alienRobot})
end

if config.fuconstruction.alienConstructionRobot==true then
  createAlienConstructor()
end

if config.fuconstruction.alienLogisticRobot==true then
  createAlienLogisticRobot()
end