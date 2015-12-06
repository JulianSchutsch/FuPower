require "fucore.lib.modules"
require "fucore.lib.entity"

local function patchFilenames(belt)
  ignorePattern = {ending_patch=0, working_sound=0}
  gsubEntities(belt, "filename", "__base__", "__fupower__", ignorePattern)
  gsubEntities(belt, "filename", "express%-transport%-belt%-to%-ground-extended", "fusion-transport-belt-to-ground", ignorePattern)
  gsubEntities(belt, "filename", "express%-transport%-belt", "fusion-transport-belt", ignorePattern)
  gsubEntities(belt, "filename", "express%-splitter", "fusion-splitter", ignorePattern)
  gsubEntities(belt, "filename", "express%-tunnel", "fusion-tunnel", ignorePattern)
end

local function patchSuperFilenames(belt)
  ignorePattern = {ending_patch=0, working_sound=0}
  gsubEntities(belt, "filename", "fusion%-", "fusion-super-", ignorePattern)
end

local function patchUltraFilenames(belt)
  ignorePattern = {ending_patch=0, working_sound=0}
  gsubEntities(belt, "filename", "fusion%-super%-", "fusion-ultra-", ignorePattern)
end

fusionBelt = clone(findEntry(data, "transport-belt", "express-transport-belt"))
fusionBelt.name      = "fusion-transport-belt"
fusionBelt.speed     = 2*fusionBelt.speed
patchFilenames(fusionBelt)
fusionBelt.minable.result = fusionBelt.name
data:extend({fusionBelt})

superFusionBelt = clone(fusionBelt)
superFusionBelt.name = "fusion-super-transport-belt"
superFusionBelt.speed = 2*superFusionBelt.speed
patchSuperFilenames(superFusionBelt)
superFusionBelt.minable.result = superFusionBelt.name
data:extend({superFusionBelt})

ultraFusionBelt = clone(superFusionBelt)
ultraFusionBelt.name = "fusion-ultra-transport-belt"
ultraFusionBelt.speed = 4*ultraFusionBelt.speed
patchUltraFilenames(ultraFusionBelt)
ultraFusionBelt.minable.result = ultraFusionBelt.name
data:extend({ultraFusionBelt})

fusionSplitter = clone(findEntry(data, "splitter", "express-splitter"))
fusionSplitter.name  = "fusion-splitter"
fusionSplitter.speed = 2*fusionSplitter.speed
patchFilenames(fusionSplitter)
fusionSplitter.minable.result = fusionSplitter.name
data:extend({fusionSplitter})

superFusionSplitter = clone(fusionSplitter)
superFusionSplitter.name = "fusion-super-splitter"
superFusionSplitter.speed = 2*superFusionSplitter.speed
patchSuperFilenames(superFusionSplitter)
superFusionSplitter.minable.result = superFusionSplitter.name
data:extend({superFusionSplitter})

ultraFusionSplitter = clone(superFusionSplitter)
ultraFusionSplitter.name = "fusion-ultra-splitter"
ultraFusionSplitter.speed = 4*ultraFusionSplitter.speed
patchUltraFilenames(ultraFusionSplitter)
ultraFusionSplitter.minable.result = ultraFusionSplitter.name
data:extend({ultraFusionSplitter})

fusionTunnel = clone(findEntry(data, "transport-belt-to-ground", "express-transport-belt-to-ground"))
fusionTunnel.name    = "fusion-transport-belt-to-ground"
fusionTunnel.speed   = 2*fusionTunnel.speed
patchFilenames(fusionTunnel)
fusionTunnel.minable.result = fusionTunnel.name
data:extend({fusionTunnel})

superFusionTunnel = clone(fusionTunnel)
superFusionTunnel.name = "fusion-super-transport-belt-to-ground"
superFusionTunnel.speed = 2*superFusionTunnel.speed
patchSuperFilenames(superFusionTunnel)
superFusionTunnel.minable.result = superFusionTunnel.name
data:extend({superFusionTunnel})

ultraFusionTunnel = clone(superFusionTunnel)
ultraFusionTunnel.name = "fusion-ultra-transport-belt-to-ground"
ultraFusionTunnel.speed = 4*ultraFusionTunnel.speed
patchUltraFilenames(ultraFusionTunnel)
ultraFusionTunnel.minable.result = ultraFusionTunnel.name
data:extend({ultraFusionTunnel})

if modPresent_Belts() then
  fusionLongBelt = clone(findEntry(data, "transport-belt-to-ground", "express-transport-belt-to-ground-extended"))
  fusionLongBelt.name  = "fusion-transport-belt-to-ground-extended"
  fusionLongBelt.speed = 2*fusionLongBelt.speed
  patchFilenames(fusionLongBelt)
  fusionLongBelt.minable.result = fusionLongBelt.name
  data:extend({fusionLongBelt})
  
  superFusionLongBelt = clone(fusionLongBelt)
  superFusionLongBelt.name = "fusion-super-transport-belt-to-ground-extended"
  superFusionLongBelt.speed = 2*superFusionLongBelt.speed
  patchSuperFilenames(superFusionLongBelt)
  superFusionLongBelt.minable.result = superFusionLongBelt.name
  data:extend({superFusionLongBelt})
  
  ultraFusionLongBelt = clone(superFusionLongBelt)
  ultraFusionLongBelt.name = "fusion-ultra-transport-belt-to-ground-extended"
  ultraFusionLongBelt.speed = 4*ultraFusionLongBelt.speed
  patchUltraFilenames(ultraFusionLongBelt)
  ultraFusionLongBelt.minable.result = ultraFusionLongBelt.name
  data:extend({ultraFusionLongBelt})
end