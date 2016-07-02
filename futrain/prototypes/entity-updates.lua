require "config"
require "fucore.lib.entity"

local function createFusionTrain()
  do
    local alienLocomotive = clone(findEntry(data, "locomotive", "diesel-locomotive"))
    alienLocomotive.max_speed = 4*alienLocomotive.max_speed
    alienLocomotive.name = "fusion-locomotive"
    alienLocomotive.max_power = "36000KW"
    alienLocomotive.air_resistance = 0.5*alienLocomotive.air_resistance
    alienLocomotive.braking_force = 100*alienLocomotive.braking_force
    alienLocomotive.minable.result = alienLocomotive.name
    alienLocomotive.energy_per_hit_point = 25
    alienLocomotive.energy_source.fuel_inventory_size = 1
    alienLocomotive.energy_source.emissions = 0    
    images = alienLocomotive.pictures.layers[1]
    gsubFilter(images, ".png", "__base__", "__fupower__")
    gsubFilter(images, ".png", "diesel%-locomotive", "fusion-locomotive")
    data:extend({alienLocomotive})
  end

  do
    local alienWagon = clone(findEntry(data, "cargo-wagon", "cargo-wagon"))
    alienWagon.name = "fusion-wagon"
    alienWagon.inventory_size = 120
    alienWagon.max_speed = 4*alienWagon.max_speed
    alienWagon.braking_force = 100*alienWagon.braking_force
    alienWagon.air_resistance = 0.5*alienWagon.air_resistance
    alienWagon.minable.result = alienWagon.name
    alienWagon.energy_per_hit_point = 25
    images = alienWagon.pictures.layers[1]
    gsubFilter(images, ".png", "__base__", "__fupower__")
    gsubFilter(images, ".png", "cargo%-wagon", "fusion-wagon")
    data:extend({alienWagon})
  end
end

if config.futrain.alienTrain==true then
  createFusionTrain()
end