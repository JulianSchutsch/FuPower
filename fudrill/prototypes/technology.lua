require "config"

local function createImprovedDrillTechnology()
  data:extend(
  {
    {
      type = "technology",
      name = "fusion-minidrill",
      icon = "__fupower__/graphics/icons/fusion-minidrill.png",
      prerequisites = {"alien-technology"},
      effects = {{type = "unlock-recipe", recipe = "fusion-minidrill"}},
      unit =
      {
        count=100,
        ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}},
        time = 30
      },
      order = "d-a-a"
    },
  })
end

local function createAlienDrillTechnology()
  data:extend(
  {
    {
      type = "technology",
      name = "fusion-drill",
      icon = "__fupower__/graphics/icons/fusion-drill.png",
      prerequisites = {"fusion-minidrill"},
      effects = {{type = "unlock-recipe", recipe = "fusion-drill"}},
      unit =
      {
        count=600,
        ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 2}, {"alien-science-pack", 2}},
        time = 30
      },
      order = "d-a-a"
    },
  })
end

if config.fudrill.improvedDrill==true then
  createImprovedDrillTechnology()
  if config.fudrill.alienDrill==true then
    createAlienDrillTechnology()
  end
end