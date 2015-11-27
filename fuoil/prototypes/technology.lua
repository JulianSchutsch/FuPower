data:extend(
{
  {
    type = "technology",
    name = "fusion-oil-production",
    icon = "__base__/graphics/technology/oil-processing.png",
    prerequisites = {"fusion"},
    effects =
    {
      {type = "unlock-recipe", recipe = "fusion-oil-production"},
      {type = "unlock-recipe", recipe = "fusion-oil-plant"}
    },
    unit =
    {
      count=300,
      ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}},
      time = 30
    }
  },
})
