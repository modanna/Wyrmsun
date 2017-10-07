--       _________ __                 __
--      /   _____//  |_____________ _/  |______     ____  __ __  ______
--      \_____  \\   __\_  __ \__  \\   __\__  \   / ___\|  |  \/  ___/
--      /        \|  |  |  | \// __ \|  |  / __ \_/ /_/  >  |  /\___ \
--     /_______  /|__|  |__|  (____  /__| (____  /\___  /|____//____  >
--             \/                  \/          \//_____/            \/
--  ______________________                           ______________________
--                        T H E   W A R   B E G I N S
--         Stratagus - A free fantasy real time strategy game engine
--
--      (c) Copyright 2001-2017 by Lutz Sammer, Jimmy Salmon and Andrettin
--
--      This program is free software; you can redistribute it and/or modify
--      it under the terms of the GNU General Public License as published by
--      the Free Software Foundation; either version 2 of the License, or
--      (at your option) any later version.
--
--      This program is distributed in the hope that it will be useful,
--      but WITHOUT ANY WARRANTY; without even the implied warranty of
--      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--      GNU General Public License for more details.
--
--      You should have received a copy of the GNU General Public License
--      along with this program; if not, write to the Free Software
--      Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--

-- dependencies for neutral units
DefineDependency("unit-road",
	{"upgrade-dwarven-masonry"},
	"or", {"upgrade-goblin-masonry"},
	"or", {"upgrade-teuton-masonry"}
)

DefineDependency("unit-railroad",
	{"upgrade-engineering"}
)

DefineDependency("unit-minecart",
	{"upgrade-engineering"}
)

-- dependencies for neutral upgrades
DefineDependency("upgrade-mathematics",
	{"upgrade-dwarven-runewriting"},
	"or", {"upgrade-goblin-writing"},
	"or", {"upgrade-teuton-writing"}
)

DefineDependency("upgrade-engineering",
	{"upgrade-mathematics", "upgrade-dwarven-masonry"},
	"or", {"upgrade-mathematics", "upgrade-goblin-masonry"},
	"or", {"upgrade-mathematics", "upgrade-teuton-masonry"}
)

DefineDependency("upgrade-architecture",
	{"upgrade-dwarven-runewriting", "upgrade-dwarven-masonry"},
	"or", {"upgrade-goblin-writing", "upgrade-goblin-masonry"},
	"or", {"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

DefinePredependency("upgrade-gunpowder",
	{"upgrade-dwarven-civilization"},
	"or", {"upgrade-gnomish-civilization"},
	"or", {"upgrade-goblin-civilization"}
)

DefineDependency("upgrade-gunpowder",
	{"upgrade-dwarven-alchemy"},
	"or", {"upgrade-goblin-alchemy"},
	"or", {"upgrade-teuton-alchemy"}
)

-- dependencies for items
DefineDependency("unit-book",
	{"upgrade-dwarven-runewriting"},
	"or", {"upgrade-goblin-writing"},
	"or", {"upgrade-teuton-writing"}
)

DefineDependency("unit-scroll",
	{"upgrade-dwarven-runewriting"},
	"or", {"upgrade-goblin-writing"},
	"or", {"upgrade-teuton-writing"}
)

DefineDependency("unit-carrots",
	{"unit-germanic-farm"},
	"or", {"unit-teuton-farm"}
)

DefineDependency("unit-cheese",
	{"unit-germanic-farm"},
	"or", {"unit-gnomish-farm"},
	"or", {"unit-goblin-farm"},
	"or", {"unit-teuton-farm"}
)

DefineDependency("unit-potion-of-healing",
	{"upgrade-dwarven-alchemy"},
	"or", {"upgrade-goblin-alchemy"},
	"or", {"upgrade-teuton-alchemy"}
)

DefineDependency("unit-elixir-of-dexterity",
	{"upgrade-dwarven-alchemy"},
	"or", {"upgrade-goblin-alchemy"},
	"or", {"upgrade-teuton-alchemy"}
)

DefineDependency("unit-elixir-of-intelligence",
	{"upgrade-dwarven-alchemy"},
	"or", {"upgrade-goblin-alchemy"},
	"or", {"upgrade-teuton-alchemy"}
)

DefineDependency("unit-elixir-of-strength",
	{"upgrade-dwarven-alchemy"},
	"or", {"upgrade-goblin-alchemy"},
	"or", {"upgrade-teuton-alchemy"}
)

DefineDependency("unit-elixir-of-vitality",
	{"upgrade-dwarven-alchemy"},
	"or", {"upgrade-goblin-alchemy"},
	"or", {"upgrade-teuton-alchemy"}
)

DefineDependency("unit-short-sword",
	{"unit-germanic-smithy"},
	"or", {"unit-teuton-smithy"},
	"or", {"unit-latin-smithy"}
)

DefineDependency("unit-broad-sword",
	{"unit-germanic-smithy", "upgrade-germanic-broad-sword"},
	"or", {"unit-teuton-smithy", "upgrade-germanic-broad-sword"},
	"or", {"unit-latin-smithy", "upgrade-germanic-broad-sword"}
)

DefineDependency("unit-spatha",
	{"unit-teuton-smithy", "upgrade-teuton-spatha"},
	"or", {"unit-latin-smithy", "upgrade-teuton-spatha"}
)

DefineDependency("unit-frankish-spatha",
	{"unit-teuton-smithy", "upgrade-frank-spatha"}
)

DefineDependency("unit-goblin-short-sword",
	{"unit-goblin-smithy"}
)

DefineDependency("unit-goblin-broad-sword",
	{"unit-goblin-smithy", "upgrade-goblin-broad-sword"}
)

DefineDependency("unit-goblin-long-sword",
	{"unit-goblin-smithy", "upgrade-goblin-long-sword"}
)

DefineDependency("unit-thrusting-sword", -- gnomish
	{"unit-dwarven-smithy"}
)

DefineDependency("unit-battle-axe",
	{"unit-brising-smithy"},
	"or", {"unit-dwarven-smithy"}
)

DefineDependency("unit-broad-axe",
	{"unit-brising-smithy", "upgrade-dwarven-broad-axe"},
	"or", {"unit-dwarven-smithy", "upgrade-dwarven-broad-axe"}
)

DefineDependency("unit-great-axe",
	{"unit-brising-smithy", "upgrade-dwarven-great-axe"},
	"or", {"unit-dwarven-smithy", "upgrade-dwarven-great-axe"}
)

DefineDependency("unit-hammer",
	{"unit-brising-smithy"},
	"or", {"unit-dwarven-smithy"},
	"or", {"unit-germanic-smithy"},
	"or", {"unit-goblin-smithy"},
	"or", {"unit-latin-smithy"},
	"or", {"unit-teuton-smithy"}
)

DefineDependency("unit-mining-pick",
	{"unit-brising-smithy"},
	"or", {"unit-dwarven-smithy"},
	"or", {"unit-germanic-smithy"},
	"or", {"unit-goblin-smithy"},
	"or", {"unit-latin-smithy"},
	"or", {"unit-teuton-smithy"}
)

DefineDependency("unit-short-spear",
	{"unit-dwarven-lumber-mill"},
	"or", {"unit-germanic-carpenters-shop"},
	"or", {"unit-goblin-lumber-mill"},
	"or", {"unit-teuton-lumber-mill"}
)

DefineDependency("unit-long-spear",
	{"unit-dwarven-lumber-mill", "upgrade-dwarven-long-spear"},
	"or", {"unit-germanic-carpenters-shop", "upgrade-germanic-long-spear"},
	"or", {"unit-goblin-lumber-mill", "upgrade-goblin-long-spear"},
	"or", {"unit-teuton-lumber-mill", "upgrade-germanic-long-spear"}
)

DefineDependency("unit-pike",
	{"unit-dwarven-lumber-mill", "upgrade-dwarven-pike"},
	"or", {"unit-goblin-lumber-mill", "upgrade-goblin-pike"},
	"or", {"unit-teuton-lumber-mill", "upgrade-teuton-pike"}
)

DefineDependency("unit-throwing-axe",
	{"unit-dwarven-lumber-mill"}
)

DefineDependency("unit-sharp-throwing-axe",
	{"unit-dwarven-lumber-mill", "upgrade-dwarven-sharp-throwing-axe"}
)

DefineDependency("unit-bearded-throwing-axe",
	{"unit-dwarven-lumber-mill", "upgrade-dwarven-bearded-throwing-axe"}
)

DefineDependency("unit-wooden-shield",
	{"unit-germanic-smithy"},
	"or", {"unit-teuton-smithy"},
	"or", {"unit-latin-smithy"}
)

DefineDependency("unit-bronze-shield",
	{"unit-germanic-smithy", "upgrade-germanic-bronze-shield"},
	"or", {"unit-teuton-smithy", "upgrade-germanic-bronze-shield"},
	"or", {"unit-latin-smithy", "upgrade-germanic-bronze-shield"}
)

DefineDependency("unit-iron-shield",
	{"unit-teuton-smithy", "upgrade-teuton-iron-shield"},
	"or", {"unit-latin-smithy", "upgrade-teuton-iron-shield"}
)

DefineDependency("unit-goblin-wooden-shield",
	{"unit-goblin-smithy"}
)

DefineDependency("unit-goblin-rimmed-shield",
	{"unit-goblin-smithy", "upgrade-goblin-rimmed-shield"}
)

DefineDependency("unit-goblin-embossed-shield",
	{"unit-goblin-smithy", "upgrade-goblin-embossed-shield"}
)

DefineDependency("unit-kite-shield",
	{"unit-teuton-smithy", "upgrade-teuton-iron-shield"}
)

DefineDependency("unit-round-shield",
	{"unit-dwarven-smithy"}
)

DefineDependency("unit-brising-round-shield",
	{"unit-brising-smithy"}
)

DefinePredependency("unit-joruvellir-wooden-shield",
	{"upgrade-faction-goldhoof-clan"}, "or", {"upgrade-faction-eikinskjaldi-clan"}, "or", {"upgrade-faction-joruvellir"}, "or", {"upgrade-faction-yawning-yales"}
)

DefineDependency("unit-joruvellir-wooden-shield",
	{"unit-dwarven-smithy"}
)

DefineDependency("unit-heater-shield",
	{"unit-brising-smithy", "upgrade-dwarven-shield-1"},
	"or", {"unit-dwarven-smithy", "upgrade-dwarven-shield-1"}
)

DefineDependency("unit-thrymgjol-shield",
	{"unit-brising-smithy", "upgrade-dwarven-shield-2"},
	"or", {"unit-dwarven-smithy", "upgrade-dwarven-shield-2"}
)

DefineDependency("unit-horn",
	{"unit-brising-smithy"},
	"or", {"unit-dwarven-smithy"},
	"or", {"unit-germanic-smithy"},
	"or", {"unit-goblin-smithy"},
	"or", {"unit-latin-smithy"},
	"or", {"unit-teuton-smithy"}
)

DefineDependency("unit-arrows",
	{"unit-germanic-carpenters-shop"},
	"or", {"unit-goblin-lumber-mill"},
	"or", {"unit-teuton-lumber-mill"}
)

DefineDependency("unit-barbed-arrows",
	{"unit-germanic-carpenters-shop", "upgrade-germanic-barbed-arrow"},
	"or", {"unit-goblin-lumber-mill", "upgrade-goblin-barbed-arrow"},
	"or", {"unit-teuton-lumber-mill", "upgrade-germanic-barbed-arrow"}
)

DefineDependency("unit-bodkin-arrows",
	{"unit-goblin-lumber-mill", "upgrade-goblin-bodkin-arrow"},
	"or", {"unit-teuton-lumber-mill", "upgrade-teuton-bodkin-arrow"}
)

DefineDependency("unit-crown",
	{"unit-brising-smithy"},
	"or", {"unit-dwarven-smithy"},
	"or", {"unit-germanic-smithy"},
	"or", {"unit-goblin-smithy"},
	"or", {"unit-latin-smithy"},
	"or", {"unit-teuton-smithy"}
)

DefineDependency("unit-amulet",
	{"unit-brising-smithy"},
	"or", {"unit-dwarven-smithy"},
	"or", {"unit-germanic-smithy"},
	"or", {"unit-goblin-smithy"},
	"or", {"unit-latin-smithy"},
	"or", {"unit-teuton-smithy"}
)

DefineDependency("unit-ring",
	{"unit-brising-smithy"},
	"or", {"unit-dwarven-smithy"},
	"or", {"unit-germanic-smithy"},
	"or", {"unit-goblin-smithy"},
	"or", {"unit-latin-smithy"},
	"or", {"unit-teuton-smithy"}
)

-- dependencies for deity upgrades that require a certain upgrade
DefineDependency("upgrade-deity-christian-god",
	{"upgrade-teuton-writing"}
)

Load("scripts/civilizations/celt/upgrade_dependencies.lua")
Load("scripts/civilizations/dwarf/upgrade_dependencies.lua")
Load("scripts/civilizations/ettin/upgrade_dependencies.lua")
Load("scripts/civilizations/frankish/upgrade_dependencies.lua")
Load("scripts/civilizations/germanic/upgrade_dependencies.lua")
Load("scripts/civilizations/gnome/upgrade_dependencies.lua")
Load("scripts/civilizations/goblin/upgrade_dependencies.lua")
Load("scripts/civilizations/goth/upgrade_dependencies.lua")
Load("scripts/civilizations/kobold/upgrade_dependencies.lua")
Load("scripts/civilizations/latin/upgrade_dependencies.lua")
Load("scripts/civilizations/suebi/upgrade_dependencies.lua")
Load("scripts/civilizations/teuton/upgrade_dependencies.lua")
