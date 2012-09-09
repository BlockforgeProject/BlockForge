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



local activatemacerator= function( pos, node, puncher)
		if node.name ~= 'electricforge:macerator' then return end
			nodedrop = { x = pos.x, y = pos.y+1, z = pos.z }
			if puncher:get_inventory():contains_item("main", "default:stone_with_iron") then
				puncher:get_inventory():remove_item("main", "default:stone_with_iron")
					--GIVING
					minetest.env:add_item(nodedrop, 'electricforge:iron_sand')
					minetest.env:add_item(nodedrop, 'electricforge:iron_sand')
			end
end
minetest.register_on_punchnode( activatemacerator )
