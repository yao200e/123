local function update_recipes()
  if settings.startup["electric-furnaces-stone-steel"].value then
    for i,force in pairs(game.forces) do
      if force.technologies["advanced-material-processing"].researched then
        force.recipes["electric-steel-furnace"].enabled = true
      end
    end
  end
end

script.on_configuration_changed(update_recipes)