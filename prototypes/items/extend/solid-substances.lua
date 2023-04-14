local Solid_substances = {
  ["ei-Li"] = {n=2},
  ["ei-Be"] = {n=3},
  ["ei-B"] = {},
  ["ei-C"] = {},
  ["ei-Na"] = {},
  ["ei-Mg"] = {},
  ["ei-Al"] = {},
  ["ei-Si"] = {},
  ["ei-P"] = {},
  ["ei-S"] = {},
  ["ei-K"] = {},
  ["ei-Ca"] = {},
  ["ei-Sc"] = {},
  ["ei-Ti"] = {},
  ["ei-V"] = {},
  ["ei-Cr"] = {},
  ["ei-Mn"] = {},
  ["ei-Fe"] = {},
  ["ei-Co"] = {},
  ["ei-Ni"] = {},
  ["ei-Cu"] = {},
  ["ei-Zn"] = {},
  ["ei-Ga"] = {},
  ["ei-Ge"] = {},
  ["ei-As"] = {},
  ["ei-Se"] = {},
  ["ei-Rb"] = {},
  ["ei-Sr"] = {},
  ["ei-Y"] = {},
  ["ei-Zr"] = {},
  ["ei-Nb"] = {},
  ["ei-Mo"] = {},
  ["ei-Tc"] = {},
  ["ei-Ru"] = {},
  ["ei-Rh"] = {},
  ["ei-Pd"] = {},
  ["ei-Ag"] = {},
  ["ei-Cd"] = {},
  ["ei-In"] = {},
  ["ei-Sn"] = {},
  ["ei-Sb"] = {},
  ["ei-Te"] = {},
  ["ei-I"] = {},
  ["ei-Cs"] = {},
  ["ei-Ba"] = {},
  ["ei-La"] = {},
  ["ei-Ce"] = {},
  ["ei-Pr"] = {},
  ["ei-Nd"] = {},
  ["ei-Pm"] = {},
  ["ei-Sm"] = {},
  ["ei-Eu"] = {},
  ["ei-Gd"] = {},
  ["ei-Tb"] = {},
  ["ei-Dy"] = {},
  ["ei-Ho"] = {},
  ["ei-Er"] = {},
  ["ei-Tm"] = {},
  ["ei-Yb"] = {},
  ["ei-Lu"] = {},
  ["ei-Hf"] = {},
  ["ei-Ta"] = {},
  ["ei-W"] = {},
  ["ei-Re"] = {},
  ["ei-Os"] = {},
  ["ei-Ir"] = {},
  ["ei-Pt"] = {},
  ["ei-Au"] = {},
  ["ei-Pb"] = {},
  ["ei-Bi"] = {},
  ["ei-Po"] = {},
  ["ei-At"] = {},
  ["ei-Fr"] = {},
  ["ei-Ra"] = {},
  ["ei-Ac"] = {},
  ["ei-Th"] = {},
  ["ei-Pa"] = {},
  ["ei-U"] = {},
  ["ei-Np"] = {},
  ["ei-Pu"] = {},
  ["ei-Am"] = {},
  ["ei-Cm"] = {},
  ["ei-Bk"] = {},
  ["ei-Cf"] = {},
  ["ei-Es"] = {},
  ["ei-Fm"] = {},
  ["ei-Md"] = {},
  ["ei-No"] = {},
  ["ei-Lr"] = {}
}
-- for name, _ in pairs(Solid_substances) do
--   local subgroup = {
--     type = "item-subgroup",
--     name = name,
--     group = "substances"
--   }
--   data:extend({ subgroup })
-- end
for name, extra in pairs(Solid_substances) do
  if extra.icon == nil then
    extra.icon = "__EternalIndustry__/graphics/items/raw-iron.png"
  end
  if extra.is == nil then
    extra.is = 128
  end
  if extra.sz == nil then
    extra.sz = 100
  end
  local item
  item =
  {
    type = "item",
    name = name,
    icon = extra.icon,
    icon_size = extra.is,
    stack_size = extra.sz,
    group = "substances",
    subgroup = "a",
    order = "a[" .. name .. "]",
  }
  data:extend({ item })
end
