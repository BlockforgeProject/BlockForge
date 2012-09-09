--  _______          _     _______
-- (_______)        | |   (_______)                                  _
--  _____ ___   ____| |  _ _____ ___   ____ ____  ____   ____   ____| |_
-- |  ___) _ \ / ___) | / )  ___) _ \ / ___) _  |/ _  ) |  _ \ / _  )  _)
-- | |  | |_| | |   | |< (| |  | |_| | |  ( ( | ( (/ / _| | | ( (/ /| |__
-- |_|   \___/|_|   |_| \_)_|   \___/|_|   \_|| |\____|_)_| |_|\____)\___)
--                                        (_____|
--
-- ######################################################################
--			       BLOCKFORGE
-- ######################################################################
--
-- ~ Project's Site: http://blockforge.forkforge.net
-- ~ Main Site: http://forkforge.net 
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 2 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License along
-- with this program; if not, write to the Free Software Foundation, Inc.,
-- 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
--


--RECIPES
minetest.register_craft({
	output = 'electricforge:electroblock 1',
	recipe = {
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
		{'moreores:copper_ingot', 'oil:bucket_oil', 'moreores:copper_ingot'},
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
	}
})

minetest.register_craft({
	output = 'electricforge:controlpanel 1',
	recipe = {
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
		{'default:steel_ingot', 'moreores:tin_ingot', 'default:steel_ingot'},
	}
})

minetest.register_craft({
	output = 'default:coal_lump 1',
	recipe = {
		{'electricforge:oilplate', '', ''},
		{'electricforge:oilplate', '', ''},
	}
})

minetest.register_craft({
	output = 'electricforge:basic_ai 1',
	recipe = {
		{'', 'electricforge:intbattery', ''},
		{'', 'electricforge:electroblock', ''},
		{'electricforge:oilplate', 'electricforge:controlpanel', 'electricforge:oilplate'},
	}
})


minetest.register_craft({
	output = 'electricforge:electrodrill 1',
	recipe = {
		{'', 'electricforge:industrial_iron', ''},
		{'electricforge:industrial_iron', '', 'electricforge:industrial_iron'},
		{'electricforge:industrial_iron', '', 'electricforge:industrial_iron'},
	}
})

minetest.register_craft({
	output = 'electricforge:raffinery 1',
	recipe = {
		{'electricforge:industrial_iron', 'electricforge:electrodrill', 'electricforge:industrial_iron'},
		{'electricforge:industrial_iron', 'electricforge:electroblock', 'electricforge:industrial_iron'},
		{'gunmod:compressed_coal', 'electricforge:controlpanel', 'gunmod:compressed_coal'},
	}
})

minetest.register_craft({
	output = 'electricforge:quarrydrill 5',
	recipe = {
		{'', 'electricforge:industrial_iron', ''},
		{'electricforge:industrial_iron', 'electricforge:electrodrill', 'electricforge:industrial_iron'},
		{'', 'gunmod:compressed_coal', ''},
	}
})

minetest.register_craft({
	output = 'electricforge:quarry 1',
	recipe = {
		{'', 'electricforge:electrodrill', '' },
		{'electricforge:electrodrill', 'electricforge:electroblock', 'electricforge:electrodrill'},
		{'', 'electricforge:controlpanel', ''},

	}
})

minetest.register_craft({
	output = 'electricforge:autoquarry 1',
	recipe = {
		{'', 'electricforge:electrodrill', '' },
		{'electricforge:electrodrill', 'electricforge:basic_ai', 'electricforge:electrodrill'},
		{'electricforge:oilplate', 'electricforge:controlpanel', 'electricforge:oilplate'},

	}
})

minetest.register_craft({
	output = 'electricforge:intbattery 1',
	recipe = {
		{'electricforge:industrial_iron', 'electricforge:industrial_iron', 'electricforge:industrial_iron'},
		{'gunmod:compressed_coal', 'gunmod:compressed_coal', 'gunmod:compressed_coal'},
		{'electricforge:industrial_iron', 'electricforge:industrial_iron', 'electricforge:industrial_iron'},
	}
})


minetest.register_craft({
	output = 'electricforge:chainsaw 1',
	recipe = {
		{'', 'electricforge:industrial_iron', ''},
		{'electricforge:industrial_iron', 'electricforge:intbattery', 'electricforge:industrial_iron'},
		{'electricforge:industrial_iron', 'electricforge:controlpanel', 'electricforge:industrial_iron'},
	}
})

minetest.register_craft({
	output = 'electricforge:macerator 1',
	recipe = {
		{'electricforge:electrodrill', 'electricforge:oilplate', 'electricforge:electrodrill' },
		{'electricforge:electrodrill', 'electricforge:electroblock', 'electricforge:electrodrill'},
		{'bucket:bucket_empty', 'electricforge:controlpanel', 'bucket:bucket_empty'},

	}
})




minetest.register_craft({
	output = 'electricforge:lamppole 2',
	recipe = {
		{'electricforge:industrial_iron', '', 'electricforge:industrial_iron'},
		{'electricforge:industrial_iron', '', 'electricforge:industrial_iron'},
	}
})

minetest.register_craft({
	output = 'electricforge:lamp 1',
	recipe = {
		{'electricforge:industrial_iron', 'electricforge:industrial_iron', 'electricforge:industrial_iron'},
		{'electricforge:industrial_iron', 'default:furnace', 'electricforge:industrial_iron'},
		{'gunmod:compressed_coal', 'gunmod:compressed_coal', 'gunmod:compressed_coal'},
	}
})

