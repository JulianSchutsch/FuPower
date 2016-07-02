-- Event handling for a mod, which may have more than one indenpendent event handler.
-- Straightforward extension to the script event interface

local function handle_on_built_entity(event)
  for k, v in pairs(list_on_built_entity) do
    v(event)
  end
end

local function handle_on_robot_built_entity(event)
  for k, v in pairs(list_on_robot_built_entity) do
    v(event)
  end
end

local function handle_on_preplayer_mined_item(event)
  for k, v in pairs(list_on_preplayer_mined_item) do
    v(event)
  end
end

local function handle_on_robot_pre_mined(event)
  for k, v in pairs(list_on_robot_pre_mined) do
    v(event)
  end
end

local function handle_on_entity_died(event)
  for k, v  in pairs(list_on_entity_died) do
    v(event)
  end
end

local function handle_on_sector_scanned(event)
  for k, v in pairs(list_on_sector_scanned) do
    v(event)
  end
end

local function handle_on_tick(event)
  for k, v in pairs(list_on_tick) do
    v(event)
  end
end

local function handle_on_player_driving_changed_state(event)
  for k, v in pairs(list_on_player_driving_changed_state) do
    v(event)
  end
end

function add_on_built_entity(f)
  if list_on_built_entity==nil then
    list_on_built_entity = {}
    script.on_event(defines.events.on_built_entity, handle_on_built_entity)
  end
  table.insert(list_on_built_entity, f)
end

function add_on_robot_built_entity(f)
  if list_on_robot_built_entity==nil then
    list_on_robot_built_entity = {}
    script.on_event(defines.events.on_robot_built_entity, handle_on_robot_built_entity)
  end
  table.insert(list_on_robot_built_entity, f)
end

function add_on_preplayer_mined_item(f)
  if list_on_preplayer_mined_item==nil then
    list_on_preplayer_mined_item = {}
    script.on_event(defines.events.on_preplayer_mined_item, handle_on_preplayer_mined_item)
  end
  table.insert(list_on_preplayer_mined_item, f)
end

function add_on_robot_pre_mined(f)
  if list_on_robot_pre_mined==nil then
    list_on_robot_pre_mined = {}
    script.on_event(defines.events.on_robot_pre_mined, handle_on_preplayer_mined)
  end
  table.insert(list_on_robot_pre_mined, f)
end

function add_on_entity_died(f)
  if list_on_entity_died==nil then
    list_on_entity_died = {}
    script.on_event(defines.events.on_entity_died, handle_on_entity_died)
  end
  table.insert(list_on_entity_died, f)
end

function add_on_sector_scanned(f)
  if list_on_sector_scanned==nil then
    list_on_sector_scanned = {}
    script.on_event(defines.events.on_sector_scanned, handle_on_sector_scanned)
  end
  table.insert(list_on_sector_scanned, f)
end

function add_on_tick(f)
  if list_on_tick==nil then
    list_on_tick = {}
    script.on_event(defines.events.on_tick, handle_on_tick)
  end
  table.insert(list_on_tick, f)
end

function add_on_player_driving_changed_state(f)
  if list_on_player_driving_changed_state==nil then
    list_on_player_driving_changed_state = {}
    script.on_event(defines.events.on_player_driving_changed_state, handle_on_player_driving_changed_state)
  end
  table.insert(list_on_player_driving_changed_state, f)
end