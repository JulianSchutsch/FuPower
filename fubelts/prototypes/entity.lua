require "fucore.lib.entity"

alienTunnel = clone(findEntry(data, "transport-belt-to-ground", "express-transport-belt-to-ground"))
alienSplitter = clone(findEntry(data, "splitter", "express-splitter"))
alienBelt = clone(findEntry(data, "transport-belt", "express-transport-belt"))

normalSprites = "__fupower__/graphics/entity/fusion-transport-belt/alien-transport-belt.png"
tunnelSprites = "__fupower__/graphics/entity/fusion-transport-belt-to-ground/alien-transport-belt-to-ground-structure.png"

local function patchBelt(belt)
  belt["ending_top"]["filename"] = normalSprites
  belt["ending_bottom"]["filename"] = normalSprites
  belt["ending_side"]["filename"] = normalSprites
  belt["starting_top"]["filename"] = normalSprites
  belt["starting_bottom"]["filename"] = normalSprites
  belt["starting_side"]["filename"] = normalSprites
  belt["belt_horizontal"]["filename"] = normalSprites
  belt["belt_vertical"]["filename"] = normalSprites
end

local function patchTunnel(tunnel)
  tunnel["structure"]["direction_in"]["sheet"]["filename"] = tunnelSprites
  tunnel["structure"]["direction_out"]["sheet"]["filename"] = tunnelSprites
  patchBelt(tunnel)
end

alienBelt.name      = "fusion-transport-belt"
alienBelt.speed     = 2*alienBelt.speed
alienBelt.animations.filename = normalSprites
patchBelt(alienBelt)
alienBelt.minable.result = alienBelt.name

alienSplitter.name  = "fusion-splitter"
alienSplitter.speed = 2*alienBelt["speed"]
alienSplitter.minable.result = "fusion-splitter"
alienSplitter.structure.north.filename = "__fupower__/graphics/entity/fusion-splitter/alien-splitter-north.png"
alienSplitter.structure.east.filename = "__fupower__/graphics/entity/fusion-splitter/alien-splitter-east.png"
alienSplitter.structure.south.filename = "__fupower__/graphics/entity/fusion-splitter/alien-splitter-south.png"
alienSplitter.structure.west.filename = "__fupower__/graphics/entity/fusion-splitter/alien-splitter-west.png"

alienTunnel.name    = "fusion-transport-belt-to-ground"
alienTunnel.speed   = 2*alienTunnel.speed
alienTunnel.minable.result = "fusion-transport-belt-to-ground"

patchTunnel(alienTunnel)

data:extend({alienBelt, alienSplitter, alienTunnel})
