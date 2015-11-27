require "fucore.lib.modules"
require "fucore.lib.entity"

alienTunnel = clone(findEntry(data, "transport-belt-to-ground", "express-transport-belt-to-ground"))
alienSplitter = clone(findEntry(data, "splitter", "express-splitter"))
alienBelt = clone(findEntry(data, "transport-belt", "express-transport-belt"))

local function patchFilenames(belt)
  ignorePattern = {ending_patch=0, working_sound=0}
  gsubEntities(belt, "filename", "__base__", "__fupower__", ignorePattern)
  gsubEntities(belt, "filename", "express%-transport%-belt%-to%-ground-extended", "fusion-transport-belt-to-ground", ignorePattern)
  gsubEntities(belt, "filename", "express%-transport%-belt", "fusion-transport-belt", ignorePattern)
  gsubEntities(belt, "filename", "express%-splitter", "fusion-splitter", ignorePattern)
  gsubEntities(belt, "filename", "express%-tunnel", "fusion-tunnel", ignorePattern)
end

alienBelt.name      = "fusion-transport-belt"
alienBelt.speed     = 2*alienBelt.speed
patchFilenames(alienBelt)
alienBelt.minable.result = alienBelt.name
data:extend({alienBelt})

alienSplitter.name  = "fusion-splitter"
alienSplitter.speed = 2*alienBelt["speed"]
alienSplitter.minable.result = "fusion-splitter"
patchFilenames(alienSplitter)
data:extend({alienSplitter})

alienTunnel.name    = "fusion-transport-belt-to-ground"
alienTunnel.speed   = 2*alienTunnel.speed
alienTunnel.minable.result = "fusion-transport-belt-to-ground"
patchFilenames(alienTunnel)
data:extend({alienTunnel})

if modPresent_Belts() then
  alienLongBelt = clone(findEntry(data, "transport-belt-to-ground", "express-transport-belt-to-ground-extended"))
  alienLongBelt.name  = "fusion-transport-belt-to-ground-extended"
  alienLongBelt.speed = 2*alienLongBelt.speed
  alienLongBelt.minable.result = alienLongBelt.name
  patchFilenames(alienLongBelt)

  data:extend({alienLongBelt})
end