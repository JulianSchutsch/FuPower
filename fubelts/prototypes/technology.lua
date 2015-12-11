data:extend(
{
  {
    type = "technology",
    name = "fusion-transport-belt",
    icon = "__fupower__/graphics/icons/fusion-transport-belt.png",
    prerequisites = {"logistics-3"},
    effects =
    {
      {type = "unlock-recipe", recipe = "fusion-transport-belt"},
      {type = "unlock-recipe", recipe = "fusion-splitter"},
      {type = "unlock-recipe", recipe = "fusion-transport-belt-to-ground"}
    },
    unit =
    {
      count=1000,
      ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}, {"alien-science-pack", 2}},
      time = 30
    }
  },
  {
    type = "technology",
    name = "fusion-super-transport-belt",
    icon = "__fupower__/graphics/icons/fusion-super-transport-belt.png",
    prerequisites = {"fusion-transport-belt"},
    effects =
    {
      {type = "unlock-recipe", recipe = "fusion-super-transport-belt"},
      {type = "unlock-recipe", recipe = "fusion-super-splitter"},
      {type = "unlock-recipe", recipe = "fusion-super-transport-belt-to-ground"}
    },
    unit =
    {
      count=2000,
      ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}, {"alien-science-pack", 2}},
      time = 30
    }
  },
})
