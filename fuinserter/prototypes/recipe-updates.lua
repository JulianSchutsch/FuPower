require "fucore.lib.modules"

if modPresent_Advanced_Inserter() then
  data:extend(
  {
    {
      type = "recipe",
      name = "fusion-recycle-advanced-inserter",
      icon = "__fupower__/graphics/icons/fusion-recycle-advanced-inserter.png",
      category = "recycle",
      subgroup = "fusion-recycle",
      enabled = "true",
      ingredients = {{"advanced-inserter", 1}},
      results = {{"advanced-circuit", 5}, {"iron-plate", 15}, {"fast-inserter", 2}},
    },
    {
      type = "recipe",
      name = "fusion-recycle-super-inserter",
      icon = "__fupower__/graphics/icons/fusion-recycle-super-inserter.png",
      category = "recycle",
      subgroup = "fusion-recycle",
      enabled = "true",
      ingredients = {{"super-inserter", 1}},
      results = {{"advanced-circuit", 25}, {"iron-plate", 55}, {"fast-inserter", 4}, {"processing-unit", 5}},
    },
  })
end