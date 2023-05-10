Subgroups = {
  ["a"] = { "substances" },
  ["s[stone]"] = { "ores" },
  ["i[iron]"] = { "ores" },
  ["i[iron]-b[limonite]"] = { "ores" },
  ["i[iron]-b[siderite]"] = { "ores" },
  ["i[iron]-b[hematite]"] = { "ores" },
  ["i[iron]-b[magnetite]"] = { "ores" },
}

for name, group in pairs(Subgroups) do
  local subgroup =
  {
    type = "item-subgroup",
    name = name,
    group = group
  }
  data:extend({ subgroup })
end