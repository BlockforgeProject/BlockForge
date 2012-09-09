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


minetest.register_node("electricforge:lamppole", {
	tile_images = {"if_lamppole1.png","if_lamppole1.png",
		  "if_lamppole1.png","if_lamppole1.png",
		  "if_lamppole1.png","if_lamppole1.png"},
	drawtype = "fencelike",
	paramtype = "light",
	inventory_image = {"blockbreaker_top.png"},
	minetest.inventorycube("if_lamppole1.png"),
	is_ground_content = false,
	groups = {cracky=3},
	description = "Lamp Pole",
})

minetest.register_node("electricforge:lamp", {
	tile_images = {"if_lamppole2.png","if_lamppole2.png",
		  "if_lamplight.png","if_lamplight.png",
		  "if_lamplight.png","if_lamplight.png"},
	paramtype = "light",
	light_source = 10000000,
	inventory_image = {"if_lamplight.png"},
	minetest.inventorycube("if_lamplight.png"),
	is_ground_content = false,
	groups = {crumbly=2},
	description = "Electric Lamp",
})
dofile(minetest.get_modpath("electricforge") .. "/wtflamp.lua")