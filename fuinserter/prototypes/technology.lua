data:extend(
{
  {
    type = "technology",
    name = "fusion-inserter",
    icon = "__fupower__/graphics/icons/fast-long-handed-inserter.png",
    prerequisites = {"fast-long-handed-inserter", "alien-technology"},
    effects =
    {
      {type = "unlock-recipe", recipe = "fusion-inserter"},
    },
    unit =
    {
      count=1000,
      ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}, {"alien-science-pack", 2}},
      time = 30
    },
    order = ""
  },
  {
    type = "technology",
    name = "fusion-super-inserter",
    icon = "__fupower__/graphics/icons/fast-long-handed-inserter.png",
    prerequisites = {"fusion-inserter"},
    effects =
    {
      {type = "unlock-recipe", recipe = "fusion-super-inserter"},
    },
    unit =
    {
      count=10000,
      ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}, {"alien-science-pack", 2}},
      time = 30
    },
    order = ""
  },
})