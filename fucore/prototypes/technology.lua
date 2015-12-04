data:extend(
{
  {
    type = "technology",
    name = "fusion-scrapper",
    icon = "__base__/graphics/icons/assembling-machine-3.png",
    prerequisites = {"alien-technology"},
    effects =
    {
      {type = "unlock-recipe", recipe = "fusion-scrapper"},
    },
    unit =
    {
      count=1,
      ingredients = {{"science-pack-1", 1}},
      time = 30
    },
    order = ""
  },
})