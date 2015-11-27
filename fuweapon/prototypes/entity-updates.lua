require "fucore.lib.entity"

function laser_turret_extension(inputs)
return
{
  filename = "__fupower__/graphics/entity/fusion-laser-turret/laser-turret-gun-start.png",
  priority = "medium",
  width = 66,
  height = 67,
  frame_count = inputs.frame_count and inputs.frame_count or 15,
  line_length = inputs.line_length and inputs.line_length or 0,
  run_mode = inputs.run_mode and inputs.run_mode or "forward",
  axially_symmetrical = false,
  direction_count = 4,
  shift = {0.0625, -0.984375}
}
end

function laser_turret_extension_shadow(inputs)
return
{
  filename = "__fupower__/graphics/entity/fusion-laser-turret/laser-turret-gun-start-shadow.png",
  width = 92,
  height = 50,
  frame_count = inputs.frame_count and inputs.frame_count or 15,
  line_length = inputs.line_length and inputs.line_length or 0,
  run_mode = inputs.run_mode and inputs.run_mode or "forward",
  axially_symmetrical = false,
  direction_count = 4,
  draw_as_shadow = true,
  shift = {1.46875, 0},
}
end

function laser_turret_extension_mask(inputs)
return
{
  filename = "__fupower__/graphics/entity/fusion-laser-turret/laser-turret-gun-start-mask.png",
  width = 51,
  height = 47,
  frame_count = inputs.frame_count and inputs.frame_count or 15,
  line_length = inputs.line_length and inputs.line_length or 0,
  run_mode = inputs.run_mode and inputs.run_mode or "forward",
  axially_symmetrical = false,
  apply_runtime_tint = true,
  direction_count = 4,
  shift = {0.078125, -1.26563},
}
end

laser = clone(findEntry(data, "electric-turret", "laser-turret"))
laser.name = "fusion-laser-turret"
laser.energy_source.input_flow_limit = "48000kW"
laser.energy_source.drain = "200KW"

gsubEntities(laser, "__base__", "__fupower__")
gsubEntities(laser, "entity/laser%-turret", "entity/fusion-laser-turret")

laser.folded_animation.layers = 
{
  laser_turret_extension{frame_count=1, line_length=1},
  laser_turret_extension_shadow{frame_count=1, line_length=1},
  laser_turret_extension_mask{frame_count=1, line_length=1}
}
laser.preparing_animation.layers =
{
  laser_turret_extension{},
  laser_turret_extension_shadow{},
  laser_turret_extension_mask{}
}
laser.folding_animation.layers =
{
  laser_turret_extension{run_mode = "backward"},
  laser_turret_extension_shadow{run_mode = "backward"},
  laser_turret_extension_mask{run_mode = "backward"}
}

laser.attack_parameters.range = 27
laser.attack_parameters.damage_modifier = 12
laser.healing_per_tick=0.2
laser.max_health = 10000
laser.minable.result = laser.name

data:extend({laser})
