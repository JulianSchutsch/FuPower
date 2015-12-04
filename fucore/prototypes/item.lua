data:extend(
{
  {
    type = "item-group",
    name = "fusion-power",
    order = "z",
    inventory_order = "z",
    icon = "__fupower__/graphics/icons/fusion-sun.png",
  },
  {
    type = "item-subgroup",
    name = "fusion-recycle",
    group = "fusion-power",
    order = "06"
  },
  {
    type = "item-subgroup",
    name = "fusion-inserters",
    group = "fusion-power",
    order = "05"
  },
  {
    type = "item-subgroup",
    name = "fusion-robots",
    group = "fusion-power",
    order = "04"
  },
  {
    type = "item-subgroup",
    name = "fusion-resources",
    group = "fusion-power",
    order = "03"
  },
  {
    type = "item-subgroup",
    name = "fusion-buildings",
    group = "fusion-power",
    order = "02"
  },
  {
    type = "item-subgroup",
    name = "fusion-train",
    group = "fusion-power",
    order = "01"
  },
  {
    type = "item",
    name = "fusion-scrapper",
    icon = "__base__/graphics/icons/assembling-machine-3.png",
    flags = {"goes-to-quickbar"},
    subgroup = "fusion-buildings",
    place_result = "fusion-scrapper",
    order = "z",
    stack_size = 50,
  },
})
