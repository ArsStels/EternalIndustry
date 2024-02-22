data:extend({
{
  type = "item",
  name = "ei-train-accumulator-empty",
  icon = "__EternalIndustry__/graphics/items/train_accumulator_empty.png",
  icon_size = 128,
  subgroup = "intermediate-product",
  order = "r[uranium-processing]-b2[antimatter-fuel-cell]-a1[empty-antimatter-fuel-cell]",
  stack_size = 10,
},
{
  type = "item",
  name = "ei-train-accumulator-full",
  icon = "__EternalIndustry__/graphics/items/train_accumulator_full.png",
  icon_size = 128,
  fuel_category = "ei-accumulator-fuel",
  fuel_value = "100MJ",
  burnt_result = "ei-train-accumulator-empty",
  subgroup = "intermediate-product",
  order = "r[uranium-processing]-b2[antimatter-fuel-cell]-a2[charged-antimatter-fuel-cell]",
  stack_size = 10,
}
})