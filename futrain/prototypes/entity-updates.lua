require("fucore.lib.entity")

alienLocomotive = clone(findEntry(data, "locomotive", "diesel-locomotive"))

alienLocomotive.max_speed = 4*alienLocomotive.max_speed
alienLocomotive.name = "fusion-locomotive"
alienLocomotive.max_power = "36000KW"
alienLocomotive.air_resistance = 0.5*alienLocomotive.air_resistance
alienLocomotive.braking_force = 100*alienLocomotive.braking_force
alienLocomotive.minable.result = alienLocomotive.name
alienLocomotive.energy_per_hit_point = 25
alienLocomotive.energy_source.fuel_inventory_size = 1

gsubFilter(alienLocomotive, ".png", "__base__", "__fupower__")
gsubFilter(alienLocomotive, ".png", "diesel%-locomotive", "fusion-locomotive")

data:extend({alienLocomotive})

alienWagon = clone(findEntry(data, "cargo-wagon", "cargo-wagon"))
alienWagon.name = "fusion-wagon"
alienWagon.inventory_size = 120
alienWagon.max_speed = 4*alienWagon.max_speed
alienWagon.braking_force = 100*alienWagon.braking_force
alienWagon.air_resistance = 0.5*alienWagon.air_resistance
alienWagon.minable.result = alienWagon.name
alienWagon.energy_per_hit_point = 25
gsubFilter(alienWagon, ".png", "__base__", "__fupower__")
gsubFilter(alienWagon, ".png", "cargo%-wagon", "fusion-wagon")

data:extend({alienWagon})