data:extend(
{
  {
    type = "technology",
    name = "fusion",
    icon = "__base__/graphics/technology/fusion-reactor-equipment.png",
    prerequisites = {"fusion-reactor-equipment"},
    effects =
    {
       {type = "unlock-recipe", recipe = "fusion-deuterium-extraction"},
       {type = "unlock-recipe", recipe = "fusion-reaction"},
       {type = "unlock-recipe", recipe = "fusion-reactor"},
       {type = "unlock-recipe", recipe = "fusion-steam-engine", },
       {type = "unlock-recipe", recipe = "fusion-heat-fluid-production"},
       {type = "unlock-recipe", recipe = "fusion-boiler"},
    },
    unit =
    {
      count=600,
      ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}},
      time = 30
    },
    order = "d-a-a"
  },
})
