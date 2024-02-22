local util = require("util")
local co = util.color

Resources_table = {
  ["metal-1"] = { name = "metal-1", color = co ("#ffe900") },
  ["metal-2"] = { name = "metal-2", color = co ("#aaefe0") },
  ["metal-3"] = { name = "metal-3", color = co ("#12e80d") },
  ["metal-4"] = { name = "metal-4", color = co ("#ffe403") },
  ["minerales"] = { color = co ("#0deae0") },
}

Resources_table_item = {
  -- Iron ores:
  ["limonite"] = { style = "normal", color = co("#0ad952") },
  ["goethite"] = { base_density = 120, color = co("#ada14a") },
  -- ["raw-iron-ore"] = { color = co("#ada14a") },
  -- Copper ores:
  ["chalcopyrite"] = { color = co("#ffe800") },
  ["malachite"] = { color = co("#0ad952") },
  -- Uranium Ores:
  ["carnotite"] = { color = co("#c7b446") },
  ["nasturan"] = { color = co("#463A3A") },
  -- Cobalt ores:
  ["cobaltite"] = { color = co("#B0C4DE") },
  ["safflorite"] = { color = co("#a0a0a0") },
  -- Lead Ores:
  ["galenite"] = { color = co("#505054") },
  ["cerussite"] = { color = co("#744c2c") },
  -- Tin ores:
  ["cassiterite"] = { color = co("#d0c8a4") },
  ["stannite"] = { color = co("#343838") },
  -- Silver Ores:
  ["native_silver"] = { color = co("#a8a098") },
  ["proustite"] = { color = co("#540008") },
  -- Molybdenum Ores:
  ["molybdenite"] = { color = co("#9090a0") },
  ["wulfenite"] = { color = co("#b83814") },
  -- Nickel ores:=
  ["nickelite"] = { color = co("#302820") },
  ["garnierite"] = { color = co("#24583c") },
  -- Aluminum ores:
  ["bauxite"] = { color = co("#e4b87c") },
  ["nepheline_syenites"] = { color = co("#f0ece0") },
  -- Titanium ores:
  ["ilmenite"] = { color = co("#383834") },
  ["rutile"] = { color = co("#642c00") },
  ["anatase"] = { color = co("#606058") },
  -- Manganese ores:
  ["pyrolusite"] = { color = co("#64685c") },
  ["rhodochrosite"] = { color = co("#a81010") },
  -- Vanadium ores:
  ["vanadinite"] = { color = co("#4c1c24") },
  ["dekloisite"] = { color = co("#e46818") },
  -- Chromites:
  ["chromite"] = { color = co("#686468") },
  ["magnochromite"] = { color = co("#50504c") },
  -- Zinc ores:
  ["zincite"] = { color = co("#740000") },
  ["sphalerite"] = { color = co("#5c3014") },
  -- Beryllium ores:
  ["chrysoberyl"] = { color = co("#94986c") },
  ["danalite"] = { color = co("#7c8080") },
  -- Gold-bearing ores:
  ["calaverite"] = { color = co("#a7a0a1") },
  ["sylvanite"] = { color = co("#5a5a54") },
  -- Lithium ores (lake ores):
  ["vpodumene"] = { color = co("#907080") },
  ["petalite"] = { color = co("#707060") },
  -- Magnesium ores:
  ["brusite"] = { color = co("#609090") },
  ["magnesite"] = { color = co("#d0d0c0") },
  -- Bismuth ores:
  ["bismuthate"] = { color = co("#a0a090") },
  ["tetradimite"] = { color = co("#9090a0") },
  -- Tungsten ores:
  ["ferberite"] = { color = co("#a09060") },
  ["gubnerite"] = { color = co("#c0c0b0") },
  -- Carbon-bearing ores:
  ["graphite"] = { color = co("#505050") },
  ["gagate"] = { color = co("#202020") },
  ["diamonds"] = { color = co("#c0b0a0 ") },
  -- Quartz ores:
  ["chalcedony"] = { color = co("#8090c0") },
  ["amethyst"] = { color = co("#502050") },
  -- Platinum Ores:
  ["native_platinum"] = { color = co("#a09080") },
  ["sperrylite"] = { color = co("#504010") },
  -- Salt ores:
  ["halite"] = { color = co("#908070") },
  ["silvin"] = { color = co("#c06040") },
  -- Other:
  ["calcite"] = { color = co("#e0b090") },
  ["peat"] = { color = co("#605040") },
  ["bitumen_sand"] = { color = co("#303020") },
  ["natural_gas"] = { color = co("#ffa010") },
  ["cinnabar"] = { color = co("#804040") },
}
