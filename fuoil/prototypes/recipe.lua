data:extend(
{
  {
    type = "recipe-category",
    name = "fusion-oil",
  },
  {
    type = "recipe",
    category = "chemistry",
    name = "fusion-oil-production",
    category = "fusion-oil",
    subgroup = "fusion-resources",
    enabled = "false",
    energy_required = 1,
    ingredients = {{type="fluid", name="water", amount=1}, {"coal", 1}},
    results = {{type="fluid", name="crude-oil", amount=10}},
  },
  {
    type = "recipe",
    name = "fusion-oil-plant",
    subgroup = "fusion-buildings",
    enabled = "false",
    energy_required = 5,
    ingredients ={{"steel-plate", 200}, {"processing-unit", 50}},
    result = "fusion-steam-engine"
  },
})
