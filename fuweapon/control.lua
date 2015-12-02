require "fucore.lib.events"

local function sectorScanned(event)
  local radar = event.radar
  if radar.name == "fusion-area-control" then
    local position = radar.position
    local surface = game.get_surface(1)
    local positionX = position.x
    local positionY = position.y
    local dist = 700
    spawner = surface.find_nearest_enemy{position=position, max_distance=dist}
    if spawner then
      surface.create_entity({name="fusion-laser", target=spawner, force=radar.force, position = position, speed=0.2})
    end
    --end
  end
end

add_on_sector_scanned(sectorScanned)