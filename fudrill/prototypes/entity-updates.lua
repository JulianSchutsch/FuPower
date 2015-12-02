require("fucore.lib.entity")

ignoreKeys = {radius_visualisation_picture=0}

alienDrill = clone(findEntry(data, "mining-drill", "basic-mining-drill"))
alienDrill.name = "fusion-drill"
alienDrill.energy_usage = "50MW"
alienDrill.mining_speed = 100
alienDrill.mining_power = 50
alienDrill.resource_searching_radius = 15.49
gsubFilter(alienDrill, ".png", "__base__", "__fupower__", ignoreKeys)
gsubFilter(alienDrill, ".png", "basic%-mining%-drill", "fusion-drill", ignoreKeys)
alienDrill.minable.result = alienDrill.name

data:extend({alienDrill})