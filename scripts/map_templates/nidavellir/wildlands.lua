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
--      (c) Copyright 2016-2017 by Andrettin
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

DefineMapTemplate("wildlands", { -- From Battle for Wesnoth: The Hammer of Thursagan (Invaders)
	Name = "Wildlands",
	MainTemplate = "nidavellir",
	Width = 47,
	Height = 32,
	SubtemplatePosition = {605, 206},
	TerrainFile = "scripts/map_templates/nidavellir/wildlands.map",
	OverlayTerrainFile = "scripts/map_templates/nidavellir/wildlands_overlay.map",
	GeneratedNeutralUnits = {
		"unit-copper-deposit", 2
	},
	PlayerLocationGeneratedNeutralUnits = {
		"unit-copper-deposit", 1,
		"unit-wood-pile", 16,
		"unit-stone-pile", 16
	}
})

--SetMapTemplateUnit("wildlands", "unit-goblin-town-hall", "wildfang-tribe", {34, 17})
SetMapTemplateUnit("nidavellir", "unit-goblin-town-hall", "wildfang-tribe", {-1, -1})

--SetMapTemplateUnit("wildlands", "unit-goblin-watch-tower", "wildfang-tribe", {26, 8})

--SetMapTemplateUnit("wildlands", "unit-goblin-watch-tower", "wildfang-tribe", {28, 29})
