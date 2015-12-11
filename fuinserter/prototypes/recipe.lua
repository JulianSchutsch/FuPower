data:extend(
{
  {
    type = "recipe",
    name = "fast-long-handed-inserter",
    enabled = "false",
    ingredients = {{"long-handed-inserter", 1}, {"iron-gear-wheel", 1}, {"electronic-circuit", 2}},
    result = "fast-long-handed-inserter",
  },
  {
    type = "recipe",
    name = "fusion-inserter",
    enabled = "false",
    ingredients = {{"fast-inserter", 2}, {"speed-module", 1}, {"advanced-circuit", 10}},
    result = "fusion-inserter",
    order = "z"
  },
  {
    type = "recipe",
    name = "fusion-super-inserter",
    enabled = "false",
    ingredients = {{"fusion-inserter", 2}, {"speed-module-2", 1}, {"processing-unit", 10}},
    result = "fusion-super-inserter",
    order = "z"
  },
})
