-- -- Electric Furnace 1 ********************************************************************
-- data.raw["furnace"]["electric-furnace"].working_visualisations[1].light =
--   {color = {r=1.0, g=0.75, b=0.5}, intensity = 1, size = 2.25, shift = {0.0625, 1.03125}}

-- Electric Furnace 2 ********************************************************************
electric2 = util.table.deepcopy(data.raw["furnace"]["electric-furnace"])
electric2.name = "electric-furnace-2"
electric2.icon = "__electric-furnaces-fork-complex__/graphics/icons/electric-furnace-2.png"
electric2.minable.result = "electric-furnace-2"
electric2.fast_replaceable_group = "furnace"
electric2.next_upgrade = "electric-furnace-3"
electric2.module_specification.module_slots = 2
electric2.energy_usage = "180kW"
electric2.crafting_speed = 3
electric2.animation.layers[1].filename = "__electric-furnaces-fork-complex__/graphics/entity/electric-furnace-2/electric-furnace-2-base.png"
electric2.animation.layers[1].hr_version.filename = "__electric-furnaces-fork-complex__/graphics/entity/electric-furnace-2/hr-electric-furnace-2.png"
-- electric2.animation.layers =
-- {
--   {
--     filename = "__electric-furnaces-fork-complex__/graphics/entity/electric-furnace-2/electric-furnace-2-base.png",
--     priority = "high",
--     width = 129,
--     height = 100,
--     frame_count = 1,
--     shift = {0.421875, 0},
--     hr_version = {
--       filename = "__electric-furnaces-fork-complex__/graphics/entity/electric-furnace-2/hr-electric-furnace-2.png",
--       priority = "high",
--       width = 239,
--       height = 219,
--       frame_count = 1,
--       shift = util.by_pixel(0.75, 5.75),
--       scale = 0.5
--     }
--   },
--   {
--     filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
--     priority = "high",
--     width = 129,
--     height = 100,
--     frame_count = 1,
--     shift = {0.421875, 0},
--     draw_as_shadow = true,
--     hr_version = {
--       filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-shadow.png",
--       priority = "high",
--       width = 227,
--       height = 171,
--       frame_count = 1,
--       draw_as_shadow = true,
--       shift = util.by_pixel(11.25, 7.75),
--       scale = 0.5
--     }
--   }
-- }

-- Electric Furnace 3 ********************************************************************
electric3 = util.table.deepcopy(data.raw["furnace"]["electric-furnace"])
electric3.name = "electric-furnace-3"
electric3.icon = "__electric-furnaces-fork-complex__/graphics/icons/electric-furnace-3.png"
electric3.minable.result = "electric-furnace-3"
electric3.fast_replaceable_group = "furnace"
electric3.next_upgrade = nil
electric3.module_specification.module_slots = 4
electric3.energy_usage = "240kW"
electric3.crafting_speed = 4
electric3.animation.layers[1].filename = "__electric-furnaces-fork-complex__/graphics/entity/electric-furnace-3/electric-furnace-3-base.png"
electric3.animation.layers[1].hr_version.filename = "__electric-furnaces-fork-complex__/graphics/entity/electric-furnace-3/hr-electric-furnace-3.png"
-- electric3.animation.layers =
-- {
--   {
--     filename = "__electric-furnaces-fork-complex__/graphics/entity/electric-furnace-3/electric-furnace-3-base.png",
--     priority = "high",
--     width = 129,
--     height = 100,
--     frame_count = 1,
--     shift = {0.421875, 0},
--     hr_version = {
--       filename = "__electric-furnaces-fork-complex__/graphics/entity/electric-furnace-3/hr-electric-furnace-3.png",
--       priority = "high",
--       width = 239,
--       height = 219,
--       frame_count = 1,
--       shift = util.by_pixel(0.75, 5.75),
--       scale = 0.5
--     }
--   },
--   {
--     filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
--     priority = "high",
--     width = 129,
--     height = 100,
--     frame_count = 1,
--     shift = {0.421875, 0},
--     draw_as_shadow = true,
--     hr_version = {
--       filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-shadow.png",
--       priority = "high",
--       width = 227,
--       height = 171,
--       frame_count = 1,
--       draw_as_shadow = true,
--       shift = util.by_pixel(11.25, 7.75),
--       scale = 0.5
--     }
--   }
-- }

-- Advanced Material Processing 3 ********************************************************
amp3 = util.table.deepcopy(data.raw["technology"]["advanced-material-processing-2"])
amp3.name = "advanced-material-processing-3"
amp3.effects = {{ type = "unlock-recipe", recipe = "electric-furnace-2"}}
amp3.prerequisites = {"advanced-material-processing-2", "effectivity-module", "production-science-pack"}
amp3.unit =
{
  count = 300,
  ingredients =
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"production-science-pack", 1}
  },
  time = 30
}
amp3.order = "c-c-b-a"

-- Advanced Material Processing 4 ********************************************************
amp4 = util.table.deepcopy(data.raw["technology"]["advanced-material-processing-2"])
amp4.name = "advanced-material-processing-4"
amp4.effects = {{type = "unlock-recipe", recipe = "electric-furnace-3"}}
amp4.prerequisites = {"advanced-material-processing-3", "speed-module-2", "utility-science-pack"}
amp4.unit =
{
  count = 450,
  ingredients =
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"production-science-pack", 1},
    {"utility-science-pack", 1}
  },
  time = 30
}
amp4.order = "c-c-b-b"

data:extend(
{
  electric2,
  electric3,

  {
    type = "item",
    name = "electric-furnace-2",
    icon = "__electric-furnaces-fork-complex__/graphics/icons/electric-furnace-2.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "smelting-machine",
    order = "c[electric-furnace]b",
    place_result = "electric-furnace-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "electric-furnace-3",
    icon = "__electric-furnaces-fork-complex__/graphics/icons/electric-furnace-3.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "smelting-machine",
    order = "c[electric-furnace]c",
    place_result = "electric-furnace-3",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "electric-furnace-2",
    ingredients = {
      {"effectivity-module", 4},
      {"electric-furnace", 1}
    },
    result = "electric-furnace-2",
    energy_required = 5,
    enabled = false
  },
  {
    type = "recipe",
    name = "electric-furnace-3",
    ingredients = {
      {"speed-module-2", 4},
      {"electric-furnace-2", 1}
    },
    result = "electric-furnace-3",
    energy_required = 5,
    enabled = false
  },

  amp3,
  amp4
})