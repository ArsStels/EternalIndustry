if not ei then ei = {} end

function ei.addRecipeToTech(rc, tech) -- add recipe to tech (also hide and disable it)
  local name = data.raw.technology[tech]
  data.raw.recipe[rc].enabled = false
  table.insert(name.effects, { type = "unlock-recipe", recipe = rc })
end

function ei.moveRecipeFrom1TechToAnother(rc, fromtech, totech) -- move a recipe from one technology to another
  local namefrom = data.raw.technology[fromtech]
  local nameto = data.raw.technology[totech]
  for key, value in pairs(namefrom.effects) do
    if value.type == "unlock-recipe"
        and value.name == rc then
      table.remove(namefrom.effects, key)
    end
  end
  table.insert(nameto.effects, { type = "unlock-recipe", recipe = rc })
end

function ei.hideRecipe(rc) -- just hide the recipe
  data.raw.recipe[rc].hidden = true
  data.raw.recipe[rc].enabled = false
end

function ei.hideRecipeAndRemoveFromTech(rc, tech) -- hide the recipe and remove it from the technology
  local name = data.raw.technology[tech]
  for key, value in pairs(name.effects) do
    if value.type == "unlock-recipe"
        and value.name == rc then
      table.remove(name.effects, key)
    end
  end
  data.raw.recipe[rc].hidden = true
  data.raw.recipe[rc].enabled = false
end

function ei.newTechCost(tech, count, time, items) -- new tech cost
  data.raw.technology[tech].unit =
  {
    count = count,
    ignore_tech_cost_multiplier = true,
    ingredients = items,
    time = time
  }
end

function ei.tableContains(table, element)
  for _, value in pairs(table) do
    if value == element then
      return true
    end
  end
  return false
end

function ei.fixRecipes()
  for _, recipe in pairs(data.raw.recipe) do
    if recipe ~= nil then
      for _, recipe_type in pairs({ recipe, recipe.normal, recipe.expensive }) do
        if recipe_type and recipe_type.results ~= nil then
          for i, result in pairs(recipe_type.results) do
            if result.type ~= "fluid" then
              local converted_result = table.deepcopy(result)
              if converted_result[1] then
                converted_result = { type = "item", name = converted_result[1], amount = converted_result[2] }
                local result_proto = ei.getItemPrototype(converted_result.name)
                if result_proto.type == "fluid" then
                  converted_result.type = "fluid"
                  recipe_type.results[i] = converted_result
                end
              end
            end
          end
        end
      end
    end
  end
end

function ei.createNewResource(name, resultname, required_fluid, fluid_amount, mining_time, icon, icons, icon_size, map_color, mining_particle, map_grid, order_resource, order_item, stack, stage_counts, frame_count, variation_count)
  data:extend(
    {
      {
        type = "autoplace-control",
        name = name,
        richness = true,
        category = "resource",
        order = "b-e"
      },
      {
        type = "noise-layer",
        name = name
      },
      {
        type = "resource",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = { "placeable-neutral" },
        order = order_resource,
        map_color = map_color,
        map_grid = map_grid,
        minable =
        {
          fluid_amount = fluid_amount,
          hardness = 1,
          required_fluid = required_fluid,
          mining_particle = mining_particle,
          mining_time = mining_time,
          result = resultname,
        },
        collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        autoplace =
        {
          control = name,
          sharpness = 1,
          richness_multiplier = 13000,
          richness_base = 350,
          size_control_multiplier = 0.06,
          peaks = {
            {
              influence = 0.3,
              starting_area_weight_optimal = 0,
              starting_area_weight_range = 0,
              starting_area_weight_max_range = 2,
            },
            {
              influence = 0.55,
              noise_layer = name,
              noise_octaves_difference = -2.3,
              noise_persistence = 0.4,
              starting_area_weight_optimal = 0,
              starting_area_weight_range = 0,
              starting_area_weight_max_range = 2,
            },
          },
        },
        stage_counts = stage_counts,
        stages =
        {
          sheet =
          {
            filename = icons,
            priority = "extra-high",
            width = icon_size,
            height = icon_size,
            frame_count = frame_count,
            variation_count = variation_count
          }
        },
      },
      {
        type = "item",
        name = name,
        icon = icon,
        icon_size = icon_size,
        stack_size = stack,
        order = order_item
      },
    })
  log("ei.createNewResource "..name.." with ".. resultname.." created")
end

--function ei.addRecipe(recipe_name_new, recipe_name, recipe_icon, localised_recipe_name, recipe_enabled, recipe_category, recipe_ingredients, recipe_products, recipe_hidden, recipe_hidden_from_player_crafting, recipe_order, recipe_group, recipe_subgroup)
--  local new_recipe = table.deepcopy(data.raw["recipe"][recipe_name_new])
--    new_recipe.name = recipe_name
--    new_recipe.icon = recipe_icon
--    new_recipe.localised_name = localised_recipe_name
--    new_recipe.enabled = recipe_enabled
--    new_recipe.category = recipe_category
--    new_recipe.ingredients = recipe_ingredients
--    new_recipe.products = recipe_products
--    new_recipe.hidden = recipe_hidden
--    new_recipe.hidden_from_player_crafting = recipe_hidden_from_player_crafting
--    new_recipe.order = recipe_order
--    new_recipe.group = recipe_group
--    new_recipe.subgroup = recipe_subgroup
--    data:extend({
--      new_recipe
--    })
--end

function ei.newItem(item_name, item_icons, item_icon_size, item_stack, item_group, item_subgroup, item_order, item_localised_name)
  ei.newSubgroup(item_subgroup, item_group)
  local item = {
    type = "item",
    name = item_name,
    icons = item_icons,
    icon_size = item_icon_size,
    stack_size = item_stack,
    group = item_group,
    subgroup = item_subgroup,
    order = item_order,
    localised_name = item_localised_name,
  }
  data:extend({item})
  log("ei.newItem "..item_name.." created")
end

function ei.newSubgroup(item_subgroup, item_group)
  data:extend({
    {
      type = "item-subgroup",
      name = item_subgroup,
      group = item_group,
    },
  })
  log("ei.newSubgroup "..item_subgroup.." and ".. item_group.." created")
end
