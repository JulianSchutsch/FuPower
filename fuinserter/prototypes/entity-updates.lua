require "fucore.lib.entity"
require "fucore.lib.modules"

-- For the case that Fast_Long_Handed_Inserter is present, its recipe is overwritten
normal = findEntry(data, "inserter", "basic-inserter")
fast = findEntry(data, "inserter", "fast-inserter")
longHanded = findEntry(data, "inserter", "long-handed-inserter")

-- Calculate the speed up ratio between fast and normal, then apply it to the long handed inserters
extensionFactor = fast.extension_speed/normal.extension_speed
rotationFactor = fast.rotation_speed/normal.rotation_speed

fastLong = clone(longHanded)
fastLong.name = "fast-long-handed-inserter"
fastLong.extension_speed = extensionFactor*fastLong.extension_speed
fastLong.rotation_speed = rotationFactor*fastLong.rotation_speed
gsubMatch(fastLong, "long%-handed%-inserter.*%.png", "__base__", "__fupower__")
gsubMatch(fastLong, "long%-handed%-inserter.*%.png", "long%-handed%-inserter", "fast-long-handed-inserter")
fastLong.minable.result = fastLong.name
data:extend({fastLong})

alienInserter = clone(fast)
alienInserter.name = "fusion-inserter"
alienInserter.extension_speed = 4*alienInserter.extension_speed
alienInserter.rotation_speed = 4*alienInserter.rotation_speed
alienInserter.minable.result = alienInserter.name
gsubMatch(alienInserter, "fast%-inserter.*%.png", "__base__", "__fupower__")
gsubMatch(alienInserter, "fast%-inserter.*%.png", "fast%-inserter", "fusion-inserter")
data:extend({alienInserter})

superInserter = clone(alienInserter)
superInserter.name = "fusion-super-inserter"
superInserter.extension_speed = 4*superInserter.extension_speed
superInserter.rotation_speed = 4*superInserter.rotation_speed
superInserter.minable.result = superInserter.name
gsubMatch(superInserter, "fusion%-inserter.*%.png", "fusion%-inserter", "fusion-super-inserter")
data:extend({superInserter})