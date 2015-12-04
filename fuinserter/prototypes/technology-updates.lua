require "fucore.lib.modules"

if not modPresent_Fast_Long_Handed_Inserter() then
  data:extend(
  {
    {
      type = "technology",
      name = "fast-long-handed-inserter",
      icon = "__fupower__/graphics/icons/fast-long-handed-inserter.png",
      prerequisites = {"logistics-2"},
      effects =
      {
        {type = "unlock-recipe", recipe = "fast-long-handed-inserter"},
      },
      unit =
      {
        count=20,
        ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1},},
        time = 30
      },
      order = ""
    }
  })
end
  