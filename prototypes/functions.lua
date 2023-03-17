if not ast then ast = {} end

function ast.addRecipeToTech(rc, tech) -- add recipe to tech (also hide and disable it)
  local name = data.raw.technology[tech]
  data.raw.recipe[rc].enabled = false
  table.insert(name.effects, {type="unlock-recipe",recipe=rc})
end

function ast.moveRecipeFrom1TechToAnother(rc, fromtech, totech) -- move a recipe from one technology to another
  local namefrom = data.raw.technology[fromtech]
  local nameto = data.raw.technology[totech]
  for key, value in pairs(namefrom.effects) do
      if value.type == "unlock-recipe"
      and value.name == rc then
      table.remove(namefrom.effects, key)
    end
  end
  table.insert(nameto.effects, {type="unlock-recipe",recipe=rc})
end

function ast.hideRecipe(rc) -- just hide the recipe
  data.raw.recipe[rc].hidden = true
  data.raw.recipe[rc].enabled = false
end

function ast.hideRecipeAndRemoveFromTech(rc, tech) -- hide the recipe and remove it from the technology
  local name = data.raw.technology[tech]
  for key, value in pairs(name.effects) do
      if value.type == "unlock-recipe"
      and value.name == rc then table.remove(name.effects, key)
      end
  end
  data.raw.recipe[rc].hidden = true
  data.raw.recipe[rc].enabled = false
end

function ast.newTechCost(tech, count, time, items) -- new tech cost
data.raw.technology[tech].unit =
  {
    count = count,
    ignore_tech_cost_multiplier = true,
    ingredients = items,
    time = time
  }
end

function ast.tableContains(table, element)
  for _, value in pairs(table) do
    if value == element then
      return true
    end
  end
  return false
end

function ast.fixRecipes()
  for _, recipe in pairs(data.raw.recipe) do
    if recipe ~= nil then
      for _, recipe_type in pairs({recipe, recipe.normal, recipe.expensive}) do
        if recipe_type and recipe_type.results ~= nil then
          for i, result in pairs(recipe_type.results) do
            if result.type ~= "fluid" then
              local converted_result = table.deepcopy(result)
                if converted_result[1] then
                  converted_result = {type="item", name=converted_result[1], amount=converted_result[2]}
                local result_proto = ast.getItemPrototype(converted_result.name)
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

--function ast.addRecipe(recipe_name_new, recipe_name, recipe_icon, localised_recipe_name, recipe_enabled, recipe_category, recipe_ingredients, recipe_products, recipe_hidden, recipe_hidden_from_player_crafting, recipe_order, recipe_group, recipe_subgroup)
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