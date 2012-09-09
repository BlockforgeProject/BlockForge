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


minetest.register_node("electricforge:quarry", {
	tile_images = {"quarry_top.png","quarry_side.png",
		  "quarry_side.png","quarry_side.png",
		  "quarry_side.png","quarry_side.png"},
	inventory_image = {"quarry_top.png"},
	minetest.inventorycube("quarry_top.png"),
	is_ground_content = false,
	groups = {crumbly=2},
	digs=1,
})

minetest.register_node("electricforge:autoquarry", {
	tile_images = {"autoquarry_top.png","autoquarry_side.png",
		  "autoquarry_side.png","autoquarry_side.png",
		  "autoquarry_side.png","autoquarry_side.png"},
	inventory_image = {"autoquarry_top.png"},
	minetest.inventorycube("autoquarry_top.png"),
	is_ground_content = false,
	groups = {crumbly=2},
	digs=1,
})


minetest.register_node("electricforge:quarrydiggerpole", {
	tile_images = {"quarrypole.png"},
	drawtype = "fencelike",
	paramtype = "light",
	inventory_image = {"quarrypole.png"},
	minetest.inventorycube("quarrypole.png"),
	is_ground_content = false,
	groups = {crumbly=2},
})


minetest.register_node("electricforge:raffinery", {
	tile_images = {"raffinery_top.png","bb_side.png",
		  "bb_side.png","bb_side.png",
		  "bb_side.png","bb_side.png"},
	inventory_image = {"raffinery_top.png"},
	description = "Refinery",
	minetest.inventorycube("raffinery_top.png"),
	is_ground_content = false,
	groups = {crumbly=2},
})

minetest.register_node("electricforge:macerator", {
	tile_images = {"macerator_top.png","bb_side.png",
		  "bb_side.png","bb_side.png",
		  "bb_side.png","bb_side.png"},
	inventory_image = {"macerator_top.png"},

	minetest.inventorycube("macerator_top.png"),
	is_ground_content = false,
	groups = {crumbly=10},
})

dofile(minetest.get_modpath("electricforge") .. "/quarry.lua")
dofile(minetest.get_modpath("electricforge") .. "/autoquarry.lua")
dofile(minetest.get_modpath("electricforge") .. "/raffinery.lua")
dofile(minetest.get_modpath("electricforge") .. "/macerator.lua")







