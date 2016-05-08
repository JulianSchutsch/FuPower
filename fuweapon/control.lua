require "config"
require "fucore.lib.events"

-- Used by the security zone to fire lasers, even if they are far away
local function sectorScanned(event)
  local radar = event.radar
  if radar.name == "fusion-area-control" then
    local position = radar.position
    local surface = game.get_surface(1)
    local dist = 700
    spawner = surface.find_nearest_enemy{position=position, max_distance=dist}
    if spawner then
      surface.create_entity({name="fusion-laser", target=spawner, force=radar.force, position = position, speed=0.2})
    end
  end
end

-- Used by the mobile security zone to enable laser if a mobile security zone is entered by a player
local function drivingChanged(event)
  local player = game.players[event.player_index]
  if global.fusion_tanks==nil then
    global.fusion_tanks = {}
  end
  if player.vehicle ~= nil then
    if player.vehicle.name=="fusion-tank" then
      global.fusion_tanks[event.player_index] = player.vehicle
    end
  else
    -- TODO: Better remove
    global.fusion_tanks[event.player_index] = nil
  end
end

-- Implements fire function fo a mobile security zone
local function fireTank(tank)
  local position = tank.position
  local surface = game.get_surface(1)
  local dist = 60
  local spawner = surface.find_nearest_enemy{position=position, max_distance=dist}
  if spawner then
    surface.create_entity({name="fusion-laser", target=spawner, force=tank.force, position = position, speed=1.0})
  end
end

-- Check if mobile security zones are active, if, fire on enemies
local function tankTick(event)
  if event.tick%3==0 then
    if global.fusion_tanks~=nil then
      for k,v in pairs(global.fusion_tanks) do
        fireTank(v)
      end
    end
  end
end

if config.fuweapon.securityZone==true then
  add_on_sector_scanned(sectorScanned)
end

if config.fuweapon.mobileSecurityZone==true then
  add_on_player_driving_changed_state(drivingChanged)
  add_on_tick(tankTick)
end