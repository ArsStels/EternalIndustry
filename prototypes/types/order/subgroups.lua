Subgroups = {
  ["a-a-a"] = { group = "substances" },
  ["s[stone]"] = { group = "ores" },
  ["i[iron]"] = { group = "ores" },
  ["i[iron]-b[limonite]"] = { group = "ores" },
  ["i[iron]-b[siderite]"] = { group = "ores" },
  ["i[iron]-b[hematite]"] = { group = "ores" },
  ["i[iron]-b[magnetite]"] = { group = "ores" },
}

for name, extra in pairs(Subgroups) do
  local subgroup =
  {
    type = "item-subgroup",
    name = name,
    group = extra.group,
  }
  data:extend({ subgroup })
end
