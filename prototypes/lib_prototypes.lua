function SemenarDataLib.getNormalVersion(val)
    if val then
        if val.normal ~= nil and val.normal ~= false then
            return val.normal
        end
        if val.expensive ~= nil and val.expensive ~= false then
            return val.expensive
        end
    end
    return val
end

function SemenarDataLib.getRecipeResults(val)
    if val.results then
        return val.results
    end
    return {type="item", name=val.result, amount=val.result.count or 1}
end

SemenarDataLib.recipe_unlock_cache = {}

function SemenarDataLib.buildRecipeUnlockCache()
    for key, val in pairs(data.raw.technology) do
        local tech = SemenarDataLib.getNormalVersion(val)
        if tech.hidden ~= true and tech.enabled ~= false and tech.effects then
            for _, effect in pairs(tech.effects) do
                if effect.type == "unlock-recipe" then
                    if not SemenarDataLib.recipe_unlock_cache[effect.recipe] then
                        SemenarDataLib.recipe_unlock_cache[effect.recipe] = {}
                    end
                    SemenarDataLib.recipe_unlock_cache[effect.recipe][key] = true
                end
            end
        end
    end
end

function SemenarDataLib.onRecipeChange(val)
    val.touched_by_changes = true
end

function SemenarDataLib.disableRecipe(key)
    local val = SemenarDataLib.getNormalVersion(data.raw.recipe[key])
    if val then
        val.enabled = false
        if SemenarDataLib.recipe_unlock_cache[key] then
            for tech_name, _ in pairs(SemenarDataLib.recipe_unlock_cache[key]) do
                local tech = SemenarDataLib.getNormalVersion(data.raw.technology[tech_name])
                local indexes = {}
                for i, effect in pairs(tech.effects) do
                    if effect.type == "unlock-recipe" and effect.recipe == key then
                        table.insert(indexes, i)
                    end
                end
                for i = #indexes, 1, -1 do
                    table.remove(tech.effects, indexes[i])
                end
            end
            SemenarDataLib.recipe_unlock_cache[key] = nil
        end
        SemenarDataLib.onRecipeChange(data.raw.recipe[key])
    end
end

function SemenarDataLib.changeRecipeUnlocks(key, techs)
    local val = SemenarDataLib.getNormalVersion(data.raw.recipe[key])
    if val then
        SemenarDataLib.disableRecipe(key)
        if table_size(techs) == 0 then
            val.enabled = true
        else
            SemenarDataLib.recipe_unlock_cache[key] = {}
            for _, tech_key in pairs(techs) do
                local tech = SemenarDataLib.getNormalVersion(data.raw.technology[tech_key])
                if tech then
                    if not tech.effects then tech.effects = {} end
                    table.insert(tech.effects, {type = "unlock-recipe", recipe = key})
                    SemenarDataLib.recipe_unlock_cache[key][tech_key] = true
                end
            end
        end
        SemenarDataLib.onRecipeChange(data.raw.recipe[key])
    end
end

function SemenarDataLib.replaceRecipeIngredients(key, ingredients)
    local val = SemenarDataLib.getNormalVersion(data.raw.recipe[key])
    if val then
        val.ingredients = ingredients
        SemenarDataLib.onRecipeChange(data.raw.recipe[key])
    end
end

function SemenarDataLib.replaceRecipeResults(key, results)
    local val = SemenarDataLib.getNormalVersion(data.raw.recipe[key])
    if val then
        val.result = nil
        val.result_count = nil
        val.results = results
        SemenarDataLib.onRecipeChange(data.raw.recipe[key])
    end
end

function SemenarDataLib.replaceRecipeCraftingTime(key, crafting_time)
    local val = SemenarDataLib.getNormalVersion(data.raw.recipe[key])
    if val then
        val.energy_required = crafting_time
        SemenarDataLib.onRecipeChange(data.raw.recipe[key])
    end
end

function SemenarDataLib.changeRecipe(key, changes)
    if changes['ingredients'] then
        SemenarDataLib.replaceRecipeIngredients(key, changes['ingredients'])
    end
    if changes['results'] then
        SemenarDataLib.replaceRecipeResults(key, changes['results'])
    end
    if changes['crafting_time'] then
        SemenarDataLib.replaceRecipeCraftingTime(key, changes['crafting_time'])
    end
end

function SemenarDataLib.extendCraftingCategory(old_cat, new_cat)
    for _, category in pairs({"assembling-machine", "rocket-silo", "furnace"}) do
        for key, val in pairs(data.raw[category]) do
            local has_old_cat = false
            for _, crafting_category in pairs(val.crafting_categories) do
                if crafting_category == old_cat then
                    has_old_cat = true
                end
            end
            if has_old_cat then
                table.insert(val.crafting_categories, new_cat)
            end
        end
    end
end

SemenarDataLib.item_categories = {
    "item", "ammo", "capsule", "gun", "item-with-entity-data",
    "item-with-label", "item-with-inventory", "blueprint-book", "item-with-tags",
    "selection-tool", "blueprint", "copy-paste-tool", "deconstruction-item", "upgrade-item",
    "module", "rail-planner", "spidertron-remote", "tool", "armor", "repair-tool",
    "fluid"
}

function SemenarDataLib.getItemPrototype(key)
    for _, category in pairs(SemenarDataLib.item_categories) do
        if data.raw[category][key] then
            return data.raw[category][key]
        end
    end
end

SemenarDataLib.technology_tiers = {}

function SemenarDataLib.defineTechnologyTier(tier, tier_data)
    SemenarDataLib.technology_tiers[tier] = SemenarDataLib.tableDeepcopy(tier_data)
end

function SemenarDataLib.setTechnologyTier(key, tier)
    local tech = SemenarDataLib.getNormalVersion(data.raw.technology[key])
    if tech then
        tech.unit = SemenarDataLib.tableDeepcopy(SemenarDataLib.technology_tiers[tier])
    end
end

function SemenarDataLib.createTechnologyFromRecipes(name, tier, recipes)
    if not data.raw.technology[name] then
        data:extend({
            {
                type = "technology",
                name = name,
                order = name,
                unit = SemenarDataLib.tableDeepcopy(SemenarDataLib.technology_tiers[tier])
            }
        })
        -- Find appropriate icon:
        --  1. First recipe icon
        --  2. First recipe's main_product icon
        --  3. First recipe's result icon
        local icon_data
        for _, recipe in pairs(recipes) do
            local recipe_data = SemenarDataLib.getNormalVersion(data.raw.recipe[recipe])
            if recipe_data then
                if SemenarDataLib.hasIconData(recipe_data) then
                    icon_data = SemenarDataLib.extractIconData(recipe_data)
                else
                    if recipe_data.main_product then
                        icon_data = SemenarDataLib.extractIconData(SemenarDataLib.getItemPrototype(recipe_data.main_product))
                    else
                        if recipe_data.result then
                            icon_data = SemenarDataLib.extractIconData(SemenarDataLib.getItemPrototype(recipe_data.result))
                        else
                            if recipe_data.results[1].name then
                                icon_data = SemenarDataLib.extractIconData(SemenarDataLib.getItemPrototype(recipe_data.results[1].name))
                            else
                                icon_data = SemenarDataLib.extractIconData(SemenarDataLib.getItemPrototype(recipe_data.results[1][1]))
                            end
                        end
                    end
                end
                break
            end
        end
        SemenarDataLib.applyIconData(data.raw.technology[name], icon_data)
    else
        data.raw.technology[name].unit = SemenarDataLib.tableDeepcopy(SemenarDataLib.technology_tiers[tier])
    end
    for _, recipe in pairs(recipes) do
        SemenarDataLib.changeRecipeUnlocks(recipe, {name})
    end
end

function SemenarDataLib.addTechnologyPrerequisite(tech_from, tech_to)
    local val_to = SemenarDataLib.getNormalVersion(data.raw.technology[tech_to])
    if val_to then
        if not val_to.prerequisites then
            val_to.prerequisites = {}
        end
        table.insert(val_to.prerequisites, tech_from)
    end
end