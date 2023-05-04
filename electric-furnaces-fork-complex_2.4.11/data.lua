-- require("prototypes.entities")
-- require("prototypes.items")
-- require("prototypes.recipes")
-- require("prototypes.technology")
if settings.startup["electric-furnaces-stone-steel"].value then
  require("prototypes.stone-steel")
end
if settings.startup["electric-furnaces-advanced"].value then
  require("prototypes.advanced")
end
if settings.startup["electric-furnaces-boiler"].value then
  require("prototypes.boiler")
end