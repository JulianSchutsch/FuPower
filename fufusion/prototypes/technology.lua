data:extend(
{
  {
    type = "technology",
    name = "fusion",
    icon = "__base__/graphics/technology/fusion-reactor-equipment.png",
    prerequisites = {},
    effects =
    {
       {type = "unlock-recipe", recipe = "fusion-deuterium-extraction"},
       {type = "unlock-recipe", recipe = "fusion-reaction"},
       {type = "unlock-recipe", recipe = "fusion-reactor"},
       {type = "unlock-recipe", recipe = "fusion-heat-fluid-production"},
    },
    unit =
    {
      count=300,
      ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}},
      time = 30
    },
    order = "d-a-a"
  },
  {
    type = "technology",
    name = "fusion-steam-engine",
    icon = "__base__/graphics/technology/fusion-reactor-equipment.png",
    prerequisites = {"fusion"},
    effects =
    {
      {type = "unlock-recipe", recipe = "fusion-steam-engine", }
    },
    unit =
    {
      count=300,
      ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}},
      time = 30
    }
  },
})
