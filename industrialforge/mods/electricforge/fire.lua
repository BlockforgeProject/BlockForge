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
--This is imported from IPushButton2853's "Flint's mod" but not at all

--[[
minetest.register_craftitem("electricforge:flintnsteel", {
	image = "if_flintnsteel.png",
	on_place_on_ground = minetest.craftitem_place_item,
	on_use = function(item, player, pointed_thing)
        if pointed_thing.type == "node" then
            --if(math.random(1, 6) ~= 1) then return 
	    burn(pointed_thing.above)
	    --end
        end
    end
})]]--

minetest.register_craftitem("electricforge:flintnsteel", {
	image = "if_flintnsteel.png",
	on_place_on_ground = minetest.craftitem_place_item,
    	on_use=function(item, player, pointed_thing)
        	print("Hello fire")
        	--nodepos = {x = pos.x, y = pos.y + 1, z = pos.z}
          	  if pointed_thing.type == "node" then
      		  minetest.env:add_node(pointed_thing.above, { name='electricforge:fire' } )
      	      end
end
})

local FIRE_SPREAD_DELAY = 2
local FIRE_DISAPPEAR_DELAY = 5
local SMOKE_DISAPPEAR_DELAY = 5
local SMOKE_COLLISION_BOX = 1


local flammable = {
    "default:tree",
    "default:wood",
    "default:jungletree",
    "default:leaves"
}

minetest.register_node("electricforge:smoke", {
    drawtype = "plantlike",
    tile_images = { "smoke.png" },
    inventory_image = "smoke.png",
    paramtype = "light",
    is_ground_content = true,
    walkable = false,
    pointable = false,
    sunlight_propagates = true,
    alpha = 150,
    post_effect_color = {a = 80, r = 0, g = 0, b = 0}
})

minetest.register_node("electricforge:fire", {
    drawtype = "plantlike",
    tile_images = { "fire.png" },
    inventory_image = "fire.png",
    paramtype = "light",
    is_ground_content = true,
    walkable = false,
    pointable = false,
    sunlight_propagates = true,
    damage_per_second = 1,
    alpha = 150,
    light_source = 13,
    post_effect_color = {a = 100, r = 255, g = 0, b = 0}
})

minetest.register_abm({
    nodenames = { "electricforge:fire" },
    interval = FIRE_DISAPPEAR_INTERVAL,
    chance = 4,

    action = function(pos, node, _, __)
        minetest.env:remove_node(pos)
        create_smoke(pos)
    end
})

minetest.register_abm({
    nodenames = { "electricforge:smoke" },
    interval = FIRE_DISAPPEAR_INTERVAL,
    chance = 1,

    action = function(pos, node, _, __)
        minetest.env:remove_node(pos)
    end
})





minetest.register_abm({
    nodenames = { "electricforge:fire" },
    interval = FIRE_DISAPPEAR_INTERVAL,
    chance = 1,

    action = function(pos, node, _, __)
        for i = -1, 1 do
        for j = -1, 1 do
        for k = -1, 1 do
            if (math.abs(i) + math.abs(j) + math.abs(k) == 1) then
                local new_pos = {
                    x = pos.x + i,
                    y = pos.y + j,
                    z = pos.z + k
                }
                --minetest.env:add_node(new_pos, {name = "electricforge:fire"})
            end
        end
        end
        end
    end
})
--[[
function burn(pointed_thing)
    local node = minetest.env:get_node(pos)
    print('Hello fire!')
    for i = -1, 1 do
    for j = -1, 1 do
    for k = -1, 1 do
        local water_pos = {
            x = pos.x + i,
            y = pos.y + j,
            z = pos.z + k
        }
        local water_node = minetest.env:get_node(water_pos)
        if water_node.name == "default:water_source"
        or water_node.name == "default:water_flowing" then
            return false
        end
    end
    end
    end

    if minetest.registered_nodes[node.name].furnace_burntime == nil then
	print('Hello fire!')
        return false
    end
    if minetest.registered_nodes[node.name].furnace_burntime > -1 then
	print('Hello fire!')
        minetest.env:remove_node(pos)
        minetest.env:add_node(pos, {name = "electricforge:fire"})
        create_smoke(pos)
        return true
end
end]]--
