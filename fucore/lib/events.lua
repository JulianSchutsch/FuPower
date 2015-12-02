require "defines"

local function handle_on_build_entity(event)
  for k, v in pairs(list_on_build) do
    v(event)
  end
end

local function handle_on_robot_build_entity(event)
  for k, v in pairs(list_on_robot_build_entity) do
    v(event)
  end
end

local function handle_on_preplayer_mined(event)
  for k, v in pairs(list_on_preplayer_mined) do
    v(event)
  end
end

local function handle_on_robot_pre_mined(event)
  for k, v in pairs(list_on_robot_pre_mined) do
    v(event)
  end
end

local function handle_on_sector_scanned(event)
  for k, v in pairs(list_on_sector_scanned) do
    v(event)
  end
end

function add_on_build_entity(f)
  if list_on_build_entity==nil then
    list_on_build_entity = {}
    script.on_event(defines.events.on_build_entity, handle_on_build_entity)
  end
  table.insert(list_on_build_entity, f)
end

function add_on_robot_build_entity(f)
  if list_on_robot_build_entity==nil then
    list_on_robot_build_entity = {}
    script.on_event(defines.events.on_robot_build_entity, handle_on_robot_build_entity)
  end
  table.insert(list_on_robot_build_entity, f)
end

function add_on_preplayer_mined(f)
  if list_on_preplayer_mined==nil then
    list_on_preplayer_mined = {}
    script.on_event(defines.events.on_preplayer_mined, handle_on_preplayer_mined)
  end
  table.insert(list_on_preplayer_mined, f)
end

function add_on_robot_pre_mined(f)
  if list_on_robot_pre_mined==nil then
    list_on_robot_pre_mined = {}
    script.on_event(defines.events.on_robot_pre_mined, handle_on_preplayer_mined)
  end
  table.insert(list_on_robot_pre_mined, f)
end

function add_on_sector_scanned(f)
  if list_on_sector_scanned==nil then
    list_on_sector_scanned = {}
    script.on_event(defines.events.on_sector_scanned, handle_on_sector_scanned)
  end
  table.insert(list_on_sector_scanned, f)
end