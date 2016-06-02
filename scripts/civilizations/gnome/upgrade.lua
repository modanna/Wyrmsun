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
--      (c) Copyright 2014-2016 by Andrettin
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

DefineUpgrade("upgrade-acthnic-tribe-faction", {
	Name = _("Acthnic Tribe Faction")
})

DefineModifier("upgrade-acthnic-tribe-faction",
	{"apply-to", "unit-gnomish-worker"}, {"convert-to", "unit-deep-gnomish-worker"}
)

DefineModifier("upgrade-acthnic-tribe-faction",
	{"apply-to", "unit-gnomish-recruit"}, {"convert-to", "unit-deep-gnomish-recruit"}
)

DefineModifier("upgrade-acthnic-tribe-faction",
	{"apply-to", "unit-gnomish-duelist"}, {"convert-to", "unit-deep-gnomish-duelist"}
)

DefineModifier("upgrade-acthnic-tribe-faction",
	{"apply-to", "unit-gnomish-master-at-arms"}, {"convert-to", "unit-deep-gnomish-master-at-arms"}
)

DefineModifier("upgrade-acthnic-tribe-faction",
	{"apply-to", "unit-gnomish-herbalist"}, {"convert-to", "unit-deep-gnomish-herbalist"}
)

DefineModifier("upgrade-acthnic-tribe-faction",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-deep-gnomish-recruit"}, {"apply-to", "unit-deep-gnomish-duelist"}, {"apply-to", "unit-deep-gnomish-master-at-arms"}
)

DefineDependency("unit-gnomish-worker",
	{"upgrade-acthnic-tribe-faction", 0}
)

DefineDependency("unit-gnomish-recruit",
	{"upgrade-acthnic-tribe-faction", 0}
)

DefineDependency("unit-gnomish-herbalist",
	{"upgrade-acthnic-tribe-faction", 0}
)

DefineDependency("unit-deep-gnomish-worker",
	{"upgrade-acthnic-tribe-faction"}
)

DefineDependency("unit-deep-gnomish-recruit",
	{"upgrade-acthnic-tribe-faction"}
)

DefineDependency("unit-deep-gnomish-herbalist",
	{"upgrade-acthnic-tribe-faction"}
)
