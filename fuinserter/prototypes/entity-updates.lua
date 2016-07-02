require "config"
require "fucore.lib.entity"

local function createFastLongInserter()
  local normal = findEntry(data, "inserter", "inserter")
  local fast = findEntry(data, "inserter", "fast-inserter")
  local longHanded = findEntry(data, "inserter", "long-handed-inserter")

  -- Calculate the speed up ratio between fast and normal, then apply it to the long handed inserters
  local extensionFactor = fast.extension_speed/normal.extension_speed
  local rotationFactor = fast.rotation_speed/normal.rotation_speed

  local fastLong = clone(longHanded)
  fastLong.name = "fast-long-handed-inserter"
  fastLong.extension_speed = extensionFactor*fastLong.extension_speed
  fastLong.rotation_speed = rotationFactor*fastLong.rotation_speed
  gsubMatch(fastLong, "long%-handed%-inserter.*%.png", "__base__", "__fupower__")
  gsubMatch(fastLong, "long%-handed%-inserter.*%.png", "long%-handed%-inserter", "fast-long-handed-inserter")
  fastLong.minable.result = fastLong.name
  data:extend({fastLong})
end

local function createAlienInserter()
  local alienInserter = clone(findEntry(data, "inserter", "fast-inserter"))
  alienInserter.name = "fusion-inserter"
  alienInserter.extension_speed = 2*alienInserter.extension_speed
  alienInserter.rotation_speed = 2*alienInserter.rotation_speed
  alienInserter.minable.result = alienInserter.name
  gsubMatch(alienInserter, "fast%-inserter.*%.png", "__base__", "__fupower__")
  gsubMatch(alienInserter, "fast%-inserter.*%.png", "fast%-inserter", "fusion-inserter")
  data:extend({alienInserter})
end

local function createAlienSuperInserter()
  superInserter = clone(findEntry(data, "inserter", "fusion-inserter"))
  superInserter.name = "fusion-super-inserter"
  superInserter.extension_speed = 2*superInserter.extension_speed
  superInserter.rotation_speed = 2*superInserter.rotation_speed
  superInserter.minable.result = superInserter.name
  gsubMatch(superInserter, "fusion%-inserter.*%.png", "fusion%-inserter", "fusion-super-inserter")
  data:extend({superInserter})
end

if config.fuinserter.fastLongInserter==true then
  createFastLongInserter()
end

if config.fuinserter.alienInserter==true then
  createAlienInserter()
  if config.fuinserter.alienSuperInserter==true then
    createAlienSuperInserter()
  end
end