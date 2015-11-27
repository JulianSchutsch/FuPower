data:extend(
{
  {
    type = "technology",
    name = "fusion-laser-turret",
    icon = "__base__/graphics/technology/laser-turrets.png",
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
})
