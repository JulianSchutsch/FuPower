data:extend(
{
  {
    type = "technology",
    name = "fusion-laser-turret",
    icon = "__fupower__/graphics/icons/fusion-laser-turret.png",
    prerequisites = {"laser-turret-speed-5", "laser-turret-damage-5"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fusion-laser-turret"
      }
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
    name = "fusion-area-control",
    icon = "__fupower__/graphics/icons/fusion-area-control.png",
    prerequisites = {"alien-technology"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fusion-area-control"
      }
    },
    unit =
    {
      count=5000,
      ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}, {"alien-science-pack", 2}},
      time = 30
    }
  },
})
