require "config"
require "fucore.lib.modules"
require "fucore.lib.entity"

local function createFusionBelts()
  local function patchFilenames(belt)
    local ignorePattern = {ending_patch=0, working_sound=0}
    gsubEntities(belt, "filename", "__base__", "__fupower__", ignorePattern)
    gsubEntities(belt, "filename", "express%-transport%-belt%-to%-ground-extended", "fusion-transport-belt-to-ground", ignorePattern)
    gsubEntities(belt, "filename", "express%-transport%-belt", "fusion-transport-belt", ignorePattern)
    gsubEntities(belt, "filename", "express%-splitter", "fusion-splitter", ignorePattern)
    gsubEntities(belt, "filename", "express%-tunnel", "fusion-tunnel", ignorePattern)
  end
  local fusionBelt = clone(findEntry(data, "transport-belt", "express-transport-belt"))
  fusionBelt.name      = "fusion-transport-belt"
  fusionBelt.speed     = 2*fusionBelt.speed
  patchFilenames(fusionBelt)
  fusionBelt.minable.result = fusionBelt.name
  data:extend({fusionBelt})

  local fusionSplitter = clone(findEntry(data, "splitter", "express-splitter"))
  fusionSplitter.name  = "fusion-splitter"
  fusionSplitter.speed = 2*fusionSplitter.speed
  patchFilenames(fusionSplitter)
  fusionSplitter.minable.result = fusionSplitter.name
  data:extend({fusionSplitter})

  local fusionTunnel = clone(findEntry(data, "transport-belt-to-ground", "express-transport-belt-to-ground"))
  fusionTunnel.name    = "fusion-transport-belt-to-ground"
  fusionTunnel.speed   = 2*fusionTunnel.speed
  patchFilenames(fusionTunnel)
  fusionTunnel.minable.result = fusionTunnel.name
  data:extend({fusionTunnel})

  if modPresent_Belts() then
    local fusionLongBelt = clone(findEntry(data, "transport-belt-to-ground", "express-transport-belt-to-ground-extended"))
    fusionLongBelt.name  = "fusion-transport-belt-to-ground-extended"
    fusionLongBelt.speed = 2*fusionLongBelt.speed
    patchFilenames(fusionLongBelt)
    fusionLongBelt.minable.result = fusionLongBelt.name
    data:extend({fusionLongBelt})
  end
end

local function createFusionSuperBelts()
  local function patchSuperFilenames(belt)
    local ignorePattern = {ending_patch=0, working_sound=0}
    gsubEntities(belt, "filename", "fusion%-", "fusion-super-", ignorePattern)
  end
  local superFusionBelt = clone(findEntry(data, "transport-belt", "fusion-transport-belt"))
  superFusionBelt.name = "fusion-super-transport-belt"
  superFusionBelt.speed = 2*superFusionBelt.speed
  patchSuperFilenames(superFusionBelt)
  superFusionBelt.minable.result = superFusionBelt.name
  data:extend({superFusionBelt})

  local superFusionSplitter = clone(findEntry(data, "splitter", "fusion-splitter"))
  superFusionSplitter.name = "fusion-super-splitter"
  superFusionSplitter.speed = 2*superFusionSplitter.speed
  patchSuperFilenames(superFusionSplitter)
  superFusionSplitter.minable.result = superFusionSplitter.name
  data:extend({superFusionSplitter})

  local superFusionTunnel = clone(findEntry(data, "transport-belt-to-ground", "fusion-transport-belt-to-ground"))
  superFusionTunnel.name = "fusion-super-transport-belt-to-ground"
  superFusionTunnel.speed = 2*superFusionTunnel.speed
  patchSuperFilenames(superFusionTunnel)
  superFusionTunnel.minable.result = superFusionTunnel.name
  data:extend({superFusionTunnel})

  if modPresent_Belts() then  
    local superFusionLongBelt = clone(findEntry(data, "transport-belt-to-ground", "fusion-transport-belt-to-ground-extended"))
    superFusionLongBelt.name = "fusion-super-transport-belt-to-ground-extended"
    superFusionLongBelt.speed = 2*superFusionLongBelt.speed
    patchSuperFilenames(superFusionLongBelt)
    superFusionLongBelt.minable.result = superFusionLongBelt.name
    data:extend({superFusionLongBelt})
  end
end

if config.fubelts.alienBelt==true then
  createFusionBelts()
  if config.fubelts.alienSuperBelt==true then
    createFusionSuperBelts()
  end
end