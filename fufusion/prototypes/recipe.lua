data:extend(
{
  {
    type = "recipe-category",
    name = "fusion-fusion"
  },
  {
    type = "recipe",
    name = "fusion-reactor",
    subgroup = "fusion-buildings",
    enabled = "false",
    energy_required = 5,
    ingredients = {{"processing-unit", 100}, {"effectivity-module-3", 50}, {"steel-plate", 200}},
    result = "fusion-reactor"
  },
  {
    type = "recipe",
    name = "fusion-steam-engine",
    subgroup = "fusion-buildings",
    enabled = "false",
    energy_required = 5,
    ingredients ={{"steel-plate", 200}, {"processing-unit", 50}, {"speed-module-3", 10}},
    result = "fusion-steam-engine"
  },
  {
    type = "recipe",
    name = "fusion-boiler",
    subgroup = "fusion-buildings",
    enabled = "false",
    energy_required = 5,
    ingredients ={{"steel-plate", 1000}, {"processing-unit", 100}, {"iron-plate", 500}},
    result = "fusion-boiler"
  },
  {
    type = "recipe",
    name = "fusion-heat-fluid-production",
    category = "chemistry",
    subgroup = "fusion-resources",
    enabled = false,
    energy_required = 0.1,
    ingredients = {{type="fluid", name="water", amount=100}},
    results = {{type="fluid", name="fusion-heat-fluid", amount=150}},
    icon="__base__/graphics/icons/fluid/basic-oil-processing.png",
  },
  {
    type = "recipe",
    name = "fusion-deuterium-extraction",
    category = "chemistry",
    subgroup = "fusion-resources",
    enabled = false,
    energy_required = 5,
    ingredients = {{type="fluid", name="water", amount=100}},
    results= {{type="fluid", name="deuterium", amount=100}},
    icon="__base__/graphics/icons/fluid/basic-oil-processing.png"
  },
  {
    type = "recipe",
    name = "fusion-reaction",
    category = "fusion-fusion",
    subgroup = "fusion-resources",
    enabled = false,
    energy_required = 12,
    ingredients =
    {
      {type="fluid", name="deuterium", amount=1}
    },
    results=
    {
      {name="fusion-solar-fuel", amount=1, temperature=600}
    },
    icon="__base__/graphics/icons/fluid/basic-oil-processing.png",
  },
})
