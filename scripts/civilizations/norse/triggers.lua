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
--      (c) Copyright 2015-2016 by Andrettin
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

AddTrigger("the-journey-to-godheim", -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 227.
	function()
		if (SyncRand(100) ~= 0) then -- 1% chance this will trigger every time it is checked (and 1% for each player it is checked for, for a chance of 0.01% for a player that matches the conditions
			return false
		end
		for i=0,14 do
			if (SyncRand(100) == 0 and (GetPlayerData(i, "Faction") == "Yngling Tribe" or GetPlayerData(i, "Faction") == "Swede Tribe")) then -- should also check if the faction has an appropriate hero
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		Event(
			"The Journey to Asaland",
			"The fabled home of our ancestors, Asaland, lies far to the southeast beyond the great Vanaquisl river. Sending a party to travel there could grant us valuable insight on our heritage.",
			trigger_player,
			{"~!Off we go!", "It is too ~!perilous"},
			{function(s)
				-- function for adding quest
			end},
			nil,
			nil,
			false,
			{
				OptionTooltips = {"Receive the The Journey to Asaland quest"}
			}
		)
		return false
	end
)

AddTrigger("the-journey-to-godheim-end", -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 227.
	function()
		-- should check if the player has The Journey to Asaland quest, and also if the requirements for the quest's completion have been done (such as finding an abandoned Asa dwelling, or ruins)
		return false
	end,
	function()
		-- should set that the quest has been completed
		return false
	end
)

AddTrigger("the-winter-abode", -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 228.
	function()
		if (SyncRand(100) ~= 0) then -- 1% chance this will trigger every time it is checked (and 1% for each player it is checked for, for a chance of 0.01% for a player that matches the conditions
			return false
		end
		for i=0,14 do
			if (SyncRand(100) == 0 and (GetPlayerData(i, "Faction") == "Yngling Tribe" or GetPlayerData(i, "Faction") == "Swede Tribe")) then -- should also check if the faction has an appropriate hero
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		local hero_name = ""
		Event(
			"The Winter Abode",
			"Snio the Old has invited you to send one of your champions to take up their winter abode in Finland with him, in a place of honor.",
			trigger_player,
			{"~!Accept", "~!Decline"},
			{function(s)
				-- function for adding quest
			end},
			nil,
			nil,
			false,
			{
				OptionTooltips = {"Receive the The Winter Abode quest", ""}
			}
		)
		return false
	end
)

AddTrigger("the-winter-abode-end", -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 228.
	function()
		-- should check if the player has the quest, and also if the requirements for the quest's completion have been done (such as reaching a Finnish temple or farm)
		return false
	end,
	function()
		-- should set that the quest has been completed
		return false
	end
)

AddTrigger("marauding-finland", -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 233.
	function()
		if (SyncRand(100) ~= 0) then -- 1% chance this will trigger every time it is checked (and 1% for each player it is checked for, for a chance of 0.01% for a player that matches the conditions
			return false
		end
		for i=0,14 do
			if (SyncRand(100) == 0 and (GetPlayerData(i, "Faction") == "Yngling Tribe" or GetPlayerData(i, "Faction") == "Swede Tribe")) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		local hero_name = ""
		Event(
			"Marauding Finland",
			"Finland is ripe for plundering this summer. Although the locals are united under their chieftain, the Finnish forces are no match for ours. Shall we proceed with the raid?",
			trigger_player,
			{"Their ~!riches shall be ours!", "Give ~!peace a chance"},
			{function(s)
				-- function for adding quest
			end},
			nil,
			nil,
			false,
			{
				OptionTooltips = {"Receive the Marauding Finland quest"}
			}
		)
		return false
	end
)

AddTrigger("marauding-finland-end", -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 233.
	function()
		-- should check if the player has the quest, and also if its objectives have been completed
		return false
	end,
	function()
		-- should set that the quest has been completed
		return false
	end
)