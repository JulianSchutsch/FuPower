require "fucore.lib.entity"

ignoreFilter = {smoke=0, sparks=0}

alienConstructor = clone(findEntry(data, "construction-robot", "construction-robot"))
alienConstructor.name = "fusion-construction-robot"
alienConstructor.speed = 0.6
alienConstructor.max_health = 1500
alienConstructor.max_energy = "6MW"
alienConstructor.energy_per_move = "0.1kJ"
gsubFilter(alienConstructor, ".png", "__base__", "__fupower__", ignoreFilter)
gsubFilter(alienConstructor, ".png", "construction%-robot", "fusion-construction-robot", ignoreFilter)
alienConstructor.minable.result = "fusion-construction-robot"
data:extend({alienConstructor})