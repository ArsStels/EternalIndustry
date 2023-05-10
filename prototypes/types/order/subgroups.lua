data:extend({
  {
    type = "item-subgroup",
    name = "a",
    group = "substances",
  },
  {
    type = "item-subgroup",
    name = "i[iron]",
    group = "ores",
  },
  {
    type = "item-subgroup",
    name = "s[stone]",
    group = "ores",
  }
})
-- for name, _ in pairs(Solid_substances) do
--   local subgroup = {
--     type = "item-subgroup",
--     name = name,
--     group = "substances"
--   }
--   data:extend({ subgroup })
-- end