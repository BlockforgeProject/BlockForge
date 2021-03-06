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


local activatequarry = function( pos, node, puncher )
	if node.name ~= 'electricforge:quarry' then return end
	local digs=1
	while(minetest.env:get_node({x=pos.x,y=pos.y-digs,z=pos.z}).name=='electricforge:quarrydiggerpole') do
		print(digs)
		digs=digs+1
	end

	if puncher:get_inventory():contains_item("main", "electricforge:quarrydrill") then
			puncher:get_inventory():remove_item("main", "electricforge:quarrydrill")
			quarrypos = { x = pos.x, y = pos.y+1, z = pos.z }
			quarrypos2 = { x = pos.x, y = pos.y - digs, z = pos.z }
			nodepos = { x = pos.x, y = pos.y - digs, z = pos.z }
			nodepos2 = { x = pos.x - 1, y = pos.y - digs, z = pos.z }	
			nodepos3 = { x = pos.x, y = pos.y - digs, z = pos.z - 1 }
			nodepos4 = { x = pos.x + 1, y = pos.y - digs, z = pos.z }	
			nodepos5 = { x = pos.x, y = pos.y - digs, z = pos.z + 1 }
			nodepos6 = { x = pos.x + 1, y = pos.y - digs, z = pos.z + 1}
			nodepos7 = { x = pos.x - 1, y = pos.y - digs, z = pos.z - 1}
			nodepos8 = { x = pos.x + 1, y = pos.y - digs, z = pos.z - 1}
			nodepos9 = { x = pos.x - 1, y = pos.y - digs, z = pos.z + 1}
			--GETTING NODE AND GIVING
			local drop1 = minetest.env:get_node( nodepos )
			local drop2 = minetest.env:get_node( nodepos2 )
			local drop3 = minetest.env:get_node( nodepos3 )
			local drop4 = minetest.env:get_node( nodepos4 )
			local drop5 = minetest.env:get_node( nodepos5 )
			local drop6 = minetest.env:get_node( nodepos6 )
			local drop7 = minetest.env:get_node( nodepos7 )
			local drop8 = minetest.env:get_node( nodepos8 )
			local drop9 = minetest.env:get_node( nodepos9 )
			--DIGGING
			if drop1.name ~= 'air' then
			minetest.env:add_item(quarrypos, drop1)
			end
			if drop2.name ~= 'air' then
			minetest.env:add_item(quarrypos, drop2)
			end
			if drop3.name ~= 'air' then
			minetest.env:add_item(quarrypos, drop3)
			end
			if drop4.name ~= 'air' then
			minetest.env:add_item(quarrypos, drop4)
			end
			if drop5.name ~= 'air' then
			minetest.env:add_item(quarrypos, drop5)
			end
			if drop6.name ~= 'air' then
			minetest.env:add_item(quarrypos, drop6)
			end
			if drop7.name ~= 'air' then
			minetest.env:add_item(quarrypos, drop7)
			end
			if drop8.name ~= 'air' then
			minetest.env:add_item(quarrypos, drop8)
			end
			if drop9.name ~= 'air' then
			minetest.env:add_item(quarrypos, drop9)
			end
			--minetest.env:remove_node( quarrypos )
			minetest.env:remove_node( nodepos )
			minetest.env:remove_node( nodepos2 )
			minetest.env:remove_node( nodepos3 )
			minetest.env:remove_node( nodepos4 )
			minetest.env:remove_node( nodepos5 )
			minetest.env:remove_node( nodepos6 )
			minetest.env:remove_node( nodepos7 )
			minetest.env:remove_node( nodepos8 )
			minetest.env:remove_node( nodepos9 )
			minetest.env:add_node( quarrypos2, { name='electricforge:quarrydiggerpole' } )
		
	end
end
minetest.register_on_punchnode( activatequarry )
