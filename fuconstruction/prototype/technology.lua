data:extend(
{
  {
    type = "technology",
    name = "fusion-construction-robot",
    icon = "__fupower__/graphics/icons/fusion-construction-robot.png",
    prerequisites = {"alien-technology"},
    effects =
    {
       {type = "unlock-recipe", recipe = "fusion-construction-robot"},
    },
    unit =
    {
      count=3000,
      ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}, {"alien-science-pack", 2}},
      time = 30
    },
    order = "d-a-a"
  },
})