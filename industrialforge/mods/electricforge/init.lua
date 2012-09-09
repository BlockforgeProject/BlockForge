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


minetest.register_node("electricforge:wire", {
	description = "wire",
	tile_images = {"wire_on.png"},
	is_wire =true,
	e_max_level=6,
	e_disp=0.6,

});



dofile(minetest.get_modpath("electricforge") .. "/items.lua")
dofile(minetest.get_modpath("electricforge") .. "/block.lua")
dofile(minetest.get_modpath("electricforge") .. "/battery.lua")
dofile(minetest.get_modpath("electricforge") .. "/furnacerecipes.lua")
dofile(minetest.get_modpath("electricforge") .. "/lamps.lua")
dofile(minetest.get_modpath("electricforge") .. "/machines.lua")
dofile(minetest.get_modpath("electricforge") .. "/tools.lua")
dofile(minetest.get_modpath("electricforge") .. "/materials.lua")
dofile(minetest.get_modpath("electricforge") .. "/generators.lua")
dofile(minetest.get_modpath("electricforge") .. "/recipes.lua")
dofile(minetest.get_modpath("electricforge") .. "/totems.lua")
--dofile(minetest.get_modpath("electricforge") .. "/objtaker.lua")
--dofile(minetest.get_modpath("electricforge") .. "/fire.lua")
--dofile(minetest.get_modpath("electricforge") .. "/laser.lua")
