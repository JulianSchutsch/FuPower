require "fucore.lib.modules"

if not modPresent_Fast_Long_Handed_Inserter() then
  data:extend(
    {
      {
	type = "item",
        name = "fast-long-handed-inserter",
        icon = "__fupower__/graphics/icons/fast-long-handed-inserter.png",
        flags = {"goes-to-quickbar"},
        subgroup = "fusion-inserters",
        place_result = "fast-long-handed-inserter",
        order = "a",
        stack_size = 50,
      },
    })
end