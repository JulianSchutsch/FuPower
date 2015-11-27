require "fucore.lib.modules"
require "fucore.lib.entity"

if modPresent_Belts() then
  alienLongBelt = clone(findEntry(data, "transport-belt-to-ground", "express-transport-belt-to-ground-extended"))
  alienLongBelt.name  = "fusion-transport-belt-to-ground-extended"
  alienLongBelt.speed = 2*alienLongBelt.speed
  alienLongBelt.minable.result = alienLongBelt.name
  patchTunnel(alienLongBelt)

  data:extend({alienLongBelt})
end
