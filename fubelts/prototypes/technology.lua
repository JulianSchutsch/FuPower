data:extend(
{
  {
    type = "technology",
    name = "fusion-transport-belt",
    icon = "__fupower__/graphics/icons/alien-transport-belt.png",
    prerequisites = {"laser-turret-speed-5", "laser-turret-damage-5"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fusion-transport-belt"
      }
    },
    unit =
    {
      count=100,
      ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}, {"alien-science-pack", 2}},
      time = 30
    }
  },
  {
    type = "technology",
    name = "fusion-transport-belt-to-ground",
    icon = "__fupower__/graphics/icons/alien-transport-belt-to-ground.png",
    prerequisites = {"laser-turret-speed-5", "laser-turret-damage-5"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fusion-transport-belt-to-ground"
      }
    },
    unit =
    {
      count=100,
      ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}, {"alien-science-pack", 2}},
      time = 30
    }
  },
  {
    type = "technology",
    name = "fusion-splitter",
    icon = "__fupower__/graphics/icons/alien-splitter.png",
    prerequisites = {"laser-turret-speed-5", "laser-turret-damage-5"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fusion-splitter"
      }
    },
    unit =
    {
      count=100,
      ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}, {"alien-science-pack", 2}},
      time = 30
    }
  },
})
