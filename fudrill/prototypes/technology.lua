data:extend(
{
  {
    type = "technology",
    name = "fusion-drill",
    icon = "__fupower__/graphics/icons/fusion-drill.png",
    prerequisites = {"alien-technology"},
    effects =
    {
       {type = "unlock-recipe", recipe = "fusion-drill"},
    },
    unit =
    {
      count=600,
      ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}, {"alien-science-pack", 2}},
      time = 30
    },
    order = "d-a-a"
  },
})
