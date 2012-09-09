--------------------------------------------------------------------------------
--    Doors
--------------------------------------------------------------------------------
--    This mod adds 'minecraftlike' doors to the game
--
--    (c) 2011 Fernando Zapata
--    Code licensed under GNU GPLv3
--    Content licensed under CC BY-SA 3.0
--
--    2012-01-08    11:03:57
--------------------------------------------------------------------------------

local WALLMX = 3
local WALLMZ = 5
local WALLPX = 2
local WALLPZ = 4

--------------------------------------------------------------------------------

minetest.register_node( 'zlpdoors:door', {
	description         = 'Door',
	drawtype            = 'signlike',
	tile_images         = { 'door_door.png' },
	inventory_image     = 'door_door.png',
	wield_image         = 'door_door.png',
	paramtype2          = 'wallmounted',
	selection_box       = { type = 'wallmounted' },
	--material            = minetest.digprop_constanttime(1.0),
	groups = {cracky=2},
})
--MINEFREE++ NODE
minetest.register_node( 'zlpdoors:irondoor', {
	description         = 'Irondoor',
	drawtype            = 'signlike',
	tile_images         = { 'door_door.png' },
	inventory_image     = 'door_irondoor.png',
	wield_image         = 'door_irondoor.png',
	paramtype2          = 'wallmounted',
	selection_box       = { type = 'wallmounted' },
	--material            = minetest.digprop_constanttime(1.0),
	groups = {cracky=3},
})
minetest.register_node( 'zlpdoors:obsdoor', {
	description         = 'Obsidian door',
	drawtype            = 'signlike',
	tile_images         = { 'door_obsdoor.png' },
	inventory_image     = 'door_obsdoor.png',
	wield_image         = 'door_obsdoor.png',
	paramtype2          = 'wallmounted',
	selection_box       = { type = 'wallmounted' },
	--material            = minetest.digprop_constanttime(1.0),
	groups = {cracky=4},
})

minetest.register_craft( {
	output              = 'zlpdoors:door',
	recipe = {
		{ 'default:wood', 'default:wood' },
		{ 'default:wood', 'default:wood' },
		{ 'default:wood', 'default:wood' },
	},
})
--MINEFREE++ CRAFTING
minetest.register_craft( {
	output              = 'zlpdoors:irondoor',
	recipe = {
		{ 'default:steel_ingot', 'default:steel_ingot' },
		{ 'default:steel_ingot', 'default:steel_ingot' },
		{ 'default:steel_ingot', 'default:steel_ingot' },
	},
})

minetest.register_craft( {
	output              = 'zlpdoors:obsdoor',
	recipe = {
		{ 'obsidian:obsidian_block', 'obsidian:obsidian_block' },
		{ 'obsidian:obsidian_block', 'obsidian:obsidian_block' },
		{ 'obsidian:obsidian_block', 'obsidian:obsidian_block' },
	},
})

minetest.register_craft({
	type = 'fuel',
	recipe = 'zlpdoors:door',
	burntime = 30,
})

minetest.register_node( 'zlpdoors:door_a_c', {
	Description         = 'Top Closed Door',
	drawtype            = 'signlike',
	tile_images         = { 'door_door_a.png' },
	inventory_image     = 'door_door_a.png',
	paramtype           = 'light',
	paramtype2          = 'wallmounted',
	walkable            = true,
	selection_box       = { type = "wallmounted", },
	--material            = minetest.digprop_constanttime(1.0),
	groups = {crumbly=2},
	legacy_wallmounted  = true,
	drop                = 'zlpdoors:door',
})

minetest.register_node( 'zlpdoors:door_b_c', {
	Description         = 'Bottom Closed Door',
	drawtype            = 'signlike',
	tile_images         = { 'door_door_b.png' },
	inventory_image     = 'door_door_b.png',
	paramtype           = 'light',
	paramtype2          = 'wallmounted',
	walkable            = true,
	selection_box       = { type = "wallmounted", },
	--material            = minetest.digprop_constanttime(1.0),
	groups = {crumbly=2},
	legacy_wallmounted  = true,
	drop                = 'zlpdoors:door',
})

minetest.register_node( 'zlpdoors:door_a_o', {
	Description         = 'Top Open Door',
	drawtype            = 'signlike',
	tile_images         = { 'door_door_a_r.png' },
	inventory_image     = 'door_door_a_r.png',
	paramtype           = 'light',
	paramtype2          = 'wallmounted',
	walkable            = false,
	selection_box       = { type = "wallmounted", },
	--material            = minetest.digprop_constanttime(1.0),
	groups = {crumbly=2},
	legacy_wallmounted  = true,
	drop                = 'zlpdoors:door',
})

minetest.register_node( 'zlpdoors:door_b_o', {
	Description         = 'Bottom Open Door',
	drawtype            = 'signlike',
	tile_images         = { 'door_door_b_r.png' },
	inventory_image     = 'door_door_b_r.png',
	paramtype           = 'light',
	paramtype2          = 'wallmounted',
	walkable            = false,
	selection_box       = { type = "wallmounted", },
	--material            = minetest.digprop_constanttime(1.0),
	groups = {crumbly=2},
	legacy_wallmounted  = true,
	drop                = 'zlpdoors:door',
})
--MINEFREE++ ADDON
minetest.register_node( 'zlpdoors:irondoor_a_c', {
	Description         = 'Top Closed ironDoor',
	drawtype            = 'signlike',
	tile_images         = { 'door_irondoor_a.png' },
	inventory_image     = 'door_irondoor_a.png',
	paramtype           = 'light',
	paramtype2          = 'wallmounted',
	walkable            = true,
	selection_box       = { type = "wallmounted", },
	--material            = minetest.digprop_constanttime(5.0),
	groups = {cracky=2},
	legacy_wallmounted  = true,
	drop                = 'zlpdoors:irondoor',
})

minetest.register_node( 'zlpdoors:irondoor_b_c', {
	Description         = 'Bottom Closed ironDoor',
	drawtype            = 'signlike',
	tile_images         = { 'door_irondoor_b.png' },
	inventory_image     = 'door_irondoor_b.png',
	paramtype           = 'light',
	paramtype2          = 'wallmounted',
	walkable            = true,
	selection_box       = { type = "wallmounted", },
	--material            = minetest.digprop_constanttime(5.0),
	groups = {cracky=2},
	legacy_wallmounted  = true,
	drop                = 'zlpdoors:irondoor',
})

minetest.register_node( 'zlpdoors:irondoor_a_o', {
	Description         = 'Top Open ironDoor',
	drawtype            = 'signlike',
	tile_images         = { 'door_irondoor_a_r.png' },
	inventory_image     = 'door_irondoor_a_r.png',
	paramtype           = 'light',
	paramtype2          = 'wallmounted',
	walkable            = false,
	selection_box       = { type = "wallmounted", },
	--material            = minetest.digprop_constanttime(5.0),
	groups = {cracky=2},
	legacy_wallmounted  = true,
	drop                = 'zlpdoors:irondoor',
})

minetest.register_node( 'zlpdoors:irondoor_b_o', {
	Description         = 'Bottom Open ironDoor',
	drawtype            = 'signlike',
	tile_images         = { 'door_irondoor_b_r.png' },
	inventory_image     = 'door_irondoor_b_r.png',
	paramtype           = 'light',
	paramtype2          = 'wallmounted',
	walkable            = false,
	selection_box       = { type = "wallmounted", },
	--material            = minetest.digprop_constanttime(5.0),
	groups = {cracky=2},
	legacy_wallmounted  = true,
	drop                = 'zlpdoors:irondoor',
})
---------------------------------------------------------------------------------------------------
minetest.register_node( 'zlpdoors:obsdoor_a_c', {
	Description         = 'Top Closed Obsidian Door',
	drawtype            = 'signlike',
	tile_images         = { 'door_obsdoor_a.png' },
	inventory_image     = 'door_obsdoor_a.png',
	paramtype           = 'light',
	paramtype2          = 'wallmounted',
	walkable            = true,
	selection_box       = { type = "wallmounted", },
	--material          = minetest.digprop_constanttime(10.0),
	groups = {cracky=1},
	legacy_wallmounted  = true,
	drop                = 'zlpdoors:obsdoor',
})

minetest.register_node( 'zlpdoors:obsdoor_b_c', {
	Description         = 'Bottom Closed Obsidan Door',
	drawtype            = 'signlike',
	tile_images         = { 'door_obsdoor_b.png' },
	inventory_image     = 'door_obsdoor_b.png',
	paramtype           = 'light',
	paramtype2          = 'wallmounted',
	walkable            = true,
	selection_box       = { type = "wallmounted", },
	--material            = minetest.digprop_constanttime(10.0),
	groups = {cracky=1},
	legacy_wallmounted  = true,
	drop                = 'zlpdoors:obsdoor',
})

minetest.register_node( 'zlpdoors:obsdoor_a_o', {
	Description         = 'Top Open Obsidian Door',
	drawtype            = 'signlike',
	tile_images         = { 'door_obsdoor_a_r.png' },
	inventory_image     = 'door_obsdoor_a_r.png',
	paramtype           = 'light',
	paramtype2          = 'wallmounted',
	walkable            = false,
	selection_box       = { type = "wallmounted", },
	--material            = minetest.digprop_constanttime(10.0),
	groups = {cracky=1},
	legacy_wallmounted  = true,
	drop                = 'zlpdoors:obsdoor',
})

minetest.register_node( 'zlpdoors:obsdoor_b_o', {
	Description         = 'Bottom Open Obsidian Door',
	drawtype            = 'signlike',
	tile_images         = { 'door_obsdoor_b_r.png' },
	inventory_image     = 'door_obsdoor_b_r.png',
	paramtype           = 'light',
	paramtype2          = 'wallmounted',
	walkable            = false,
	selection_box       = { type = "wallmounted", },
	--material            = minetest.digprop_constanttime(10.0),
	groups = {cracky=1},
	legacy_wallmounted  = true,
	drop                = 'zlpdoors:obsdoor',
})
--FINE MINEFREE++ ADDON
--------------------------------------------------------------------------------

local round = function( n )
	if n >= 0 then
		return math.floor( n + 0.5 )
	else
		return math.ceil( n - 0.5 )
	end
end

local on_door_placed = function( pos, node, placer )
	if node.name ~= 'zlpdoors:door' then return end

	upos = { x = pos.x, y = pos.y - 1, z = pos.z }
	apos = { x = pos.x, y = pos.y + 1, z = pos.z }
	und = minetest.env:get_node( upos )
	abv = minetest.env:get_node( apos )

	dir = placer:get_look_dir()

	if     round( dir.x ) == 1  then
		newparam = WALLPX
	elseif round( dir.x ) == -1 then
		newparam = WALLMX
	elseif round( dir.z ) == 1  then
		newparam = WALLPZ
	elseif round( dir.z ) == -1 then
		newparam = WALLMZ
	end

	if und.name == 'air' then
		minetest.env:add_node( pos,  { name = 'zlpdoors:door_a_c', param2 = newparam } )
		minetest.env:add_node( upos, { name = 'zlpdoors:door_b_c', param2 = newparam } )
	elseif abv.name == 'air' then
		minetest.env:add_node( pos,  { name = 'zlpdoors:door_b_c', param2 = newparam } )
		minetest.env:add_node( apos, { name = 'zlpdoors:door_a_c', param2 = newparam } )
	else
		minetest.env:remove_node( pos )
		placer:get_inventory():add_item( "main", 'zlpdoors:door' )
		minetest.chat_send_player( placer:get_player_name(), 'not enough space' )
	end
end

local on_door_punched = function( pos, node, puncher )
	if string.find( node.name, 'zlpdoors:door' ) == nil then return end

	upos = { x = pos.x, y = pos.y - 1, z = pos.z }
	apos = { x = pos.x, y = pos.y + 1, z = pos.z }

	if string.find( node.name, '_c', -2 ) ~= nil then
		if     node.param2 == WALLPX then
			newparam = WALLMZ
		elseif node.param2 == WALLMZ then
			newparam = WALLMX
		elseif node.param2 == WALLMX then
			newparam = WALLPZ
		elseif node.param2 == WALLPZ then
			newparam = WALLPX
		end
	elseif string.find( node.name, '_o', -2 ) ~= nil then
		if     node.param2 == WALLMZ then
			newparam = WALLPX
		elseif node.param2 == WALLMX then
			newparam = WALLMZ
		elseif node.param2 == WALLPZ then
			newparam = WALLMX
		elseif node.param2 == WALLPX then
			newparam = WALLPZ
		end
	end

	if ( node.name == 'zlpdoors:door_a_c' ) then
		minetest.env:add_node( pos,  { name = 'zlpdoors:door_a_o', param2 = newparam } )
		minetest.env:add_node( upos, { name = 'zlpdoors:door_b_o', param2 = newparam } )

	elseif ( node.name == 'zlpdoors:door_b_c' ) then
		minetest.env:add_node( pos,  { name = 'zlpdoors:door_b_o', param2 = newparam } )
		minetest.env:add_node( apos, { name = 'zlpdoors:door_a_o', param2 = newparam } )

	elseif ( node.name == 'zlpdoors:door_a_o' ) then
		minetest.env:add_node( pos,  { name = 'zlpdoors:door_a_c', param2 = newparam } )
		minetest.env:add_node( upos, { name = 'zlpdoors:door_b_c', param2 = newparam } )

	elseif ( node.name == 'zlpdoors:door_b_o' ) then
		minetest.env:add_node( pos,  { name = 'zlpdoors:door_b_c', param2 = newparam } )
		minetest.env:add_node( apos, { name = 'zlpdoors:door_a_c', param2 = newparam } )

	end
end


local on_door_digged = function( pos, node, puncher )
	if string.find( node.name, 'zlpdoors:door' ) == nil then return end

	upos = { x = pos.x, y = pos.y - 1, z = pos.z }
	apos = { x = pos.x, y = pos.y + 1, z = pos.z }

	if string.find( node.name, '_c', -2 ) ~= nil then
		if     node.param2 == WALLPX then
			newparam = WALLMZ
		elseif node.param2 == WALLMZ then
			newparam = WALLMX
		elseif node.param2 == WALLMX then
			newparam = WALLPZ
		elseif node.param2 == WALLPZ then
			newparam = WALLPX
		end
	elseif string.find( node.name, '_o', -2 ) ~= nil then
		if     node.param2 == WALLMZ then
			newparam = WALLPX
		elseif node.param2 == WALLMX then
			newparam = WALLMZ
		elseif node.param2 == WALLPZ then
			newparam = WALLMX
		elseif node.param2 == WALLPX then
			newparam = WALLPZ
		end
	end
--[[
	if ( node.name == 'zlpdoors:door_a_c' ) then
		minetest.env:add_node( pos,  { name = 'default:air', param2 = newparam } )
		minetest.env:add_node( upos, { name = 'default:air', param2 = newparam } )

	elseif ( node.name == 'zlpdoors:door_b_c' ) then
		minetest.env:add_node( pos,  { name = 'default:air', param2 = newparam } )
		minetest.env:add_node( apos, { name = 'default:air', param2 = newparam } )

	elseif ( node.name == 'zlpdoors:door_a_o' ) then
		minetest.env:add_node( pos,  { name = 'default:air', param2 = newparam } )
		minetest.env:add_node( upos, { name = 'default:air', param2 = newparam } )

	elseif ( node.name == 'zlpdoors:door_b_o' ) then
		minetest.env:add_node( pos,  { name = 'default:air', param2 = newparam } )
		minetest.env:add_node( apos, { name = 'default:air', param2 = newparam } )
--]]
	if ( node.name == 'zlpdoors:door_a_c' ) then
		minetest.env:remove_node( pos )
		minetest.env:remove_node( upos )

	elseif ( node.name == 'zlpdoors:door_b_c' ) then
		minetest.env:remove_node( pos )
		minetest.env:remove_node( apos )

	elseif ( node.name == 'zlpdoors:door_a_o' ) then
		minetest.env:remove_node( pos )
		minetest.env:remove_node( upos )

	elseif ( node.name == 'zlpdoors:door_b_o' ) then
		minetest.env:remove_node( pos )
		minetest.env:remove_node( apos )

	end
end
-----------------------------------
--
--IRONDOOR
--MINEFREE++ ADDON BY LORENZOVULCAN
--
-----------------------------------
local on_irondoor_placed = function( pos, node, placer )
	if node.name ~= 'zlpdoors:irondoor' then return end

	upos = { x = pos.x, y = pos.y - 1, z = pos.z }
	apos = { x = pos.x, y = pos.y + 1, z = pos.z }
	und = minetest.env:get_node( upos )
	abv = minetest.env:get_node( apos )

	dir = placer:get_look_dir()

	if     round( dir.x ) == 1  then
		newparam = WALLPX
	elseif round( dir.x ) == -1 then
		newparam = WALLMX
	elseif round( dir.z ) == 1  then
		newparam = WALLPZ
	elseif round( dir.z ) == -1 then
		newparam = WALLMZ
	end

	if und.name == 'air' then
		minetest.env:add_node( pos,  { name = 'zlpdoors:irondoor_a_c', param2 = newparam } )
		minetest.env:add_node( upos, { name = 'zlpdoors:irondoor_b_c', param2 = newparam } )
	elseif abv.name == 'air' then
		minetest.env:add_node( pos,  { name = 'zlpdoors:irondoor_b_c', param2 = newparam } )
		minetest.env:add_node( apos, { name = 'zlpdoors:irondoor_a_c', param2 = newparam } )
	else
		minetest.env:remove_node( pos )
		placer:get_inventory():add_item( "main", 'zlpdoors:irondoor' )
		minetest.chat_send_player( placer:get_player_name(), 'not enough space' )
	end
end

local on_irondoor_punched = function( pos, node, puncher )
	if string.find( node.name, 'zlpdoors:irondoor' ) == nil then return end

	upos = { x = pos.x, y = pos.y - 1, z = pos.z }
	apos = { x = pos.x, y = pos.y + 1, z = pos.z }

	if string.find( node.name, '_c', -2 ) ~= nil then
		if     node.param2 == WALLPX then
			newparam = WALLMZ
		elseif node.param2 == WALLMZ then
			newparam = WALLMX
		elseif node.param2 == WALLMX then
			newparam = WALLPZ
		elseif node.param2 == WALLPZ then
			newparam = WALLPX
		end
	elseif string.find( node.name, '_o', -2 ) ~= nil then
		if     node.param2 == WALLMZ then
			newparam = WALLPX
		elseif node.param2 == WALLMX then
			newparam = WALLMZ
		elseif node.param2 == WALLPZ then
			newparam = WALLMX
		elseif node.param2 == WALLPX then
			newparam = WALLPZ
		end
	end

	if ( node.name == 'zlpdoors:irondoor_a_c' ) then
		minetest.env:add_node( pos,  { name = 'zlpdoors:irondoor_a_o', param2 = newparam } )
		minetest.env:add_node( upos, { name = 'zlpdoors:irondoor_b_o', param2 = newparam } )

	elseif ( node.name == 'zlpdoors:irondoor_b_c' ) then
		minetest.env:add_node( pos,  { name = 'zlpdoors:irondoor_b_o', param2 = newparam } )
		minetest.env:add_node( apos, { name = 'zlpdoors:irondoor_a_o', param2 = newparam } )

	elseif ( node.name == 'zlpdoors:irondoor_a_o' ) then
		minetest.env:add_node( pos,  { name = 'zlpdoors:irondoor_a_c', param2 = newparam } )
		minetest.env:add_node( upos, { name = 'zlpdoors:irondoor_b_c', param2 = newparam } )

	elseif ( node.name == 'zlpdoors:irondoor_b_o' ) then
		minetest.env:add_node( pos,  { name = 'zlpdoors:irondoor_b_c', param2 = newparam } )
		minetest.env:add_node( apos, { name = 'zlpdoors:irondoor_a_c', param2 = newparam } )

	end
end

local on_irondoor_digged = function( pos, node, puncher )
	if string.find( node.name, 'zlpdoors:irondoor' ) == nil then return end

	upos = { x = pos.x, y = pos.y - 1, z = pos.z }
	apos = { x = pos.x, y = pos.y + 1, z = pos.z }

	if string.find( node.name, '_c', -2 ) ~= nil then
		if     node.param2 == WALLPX then
			newparam = WALLMZ
		elseif node.param2 == WALLMZ then
			newparam = WALLMX
		elseif node.param2 == WALLMX then
			newparam = WALLPZ
		elseif node.param2 == WALLPZ then
			newparam = WALLPX
		end
	elseif string.find( node.name, '_o', -2 ) ~= nil then
		if     node.param2 == WALLMZ then
			newparam = WALLPX
		elseif node.param2 == WALLMX then
			newparam = WALLMZ
		elseif node.param2 == WALLPZ then
			newparam = WALLMX
		elseif node.param2 == WALLPX then
			newparam = WALLPZ
		end
	end

	if ( node.name == 'zlpdoors:irondoor_a_c' ) then
		minetest.env:remove_node( pos )
		minetest.env:remove_node( upos )

	elseif ( node.name == 'zlpdoors:irondoor_b_c' ) then
		minetest.env:remove_node( pos )
		minetest.env:remove_node( apos )

	elseif ( node.name == 'zlpdoors:irondoor_a_o' ) then
		minetest.env:remove_node( pos )
		minetest.env:remove_node( upos )

	elseif ( node.name == 'zlpdoors:irondoor_b_o' ) then
		minetest.env:remove_node( pos )
		minetest.env:remove_node( apos )

	end
end

-----------------------------------
--
--OBSIDIAN DOOR
--MINEFREE++ ADDON BY LORENZOVULCAN
--USING OBSIDIAN MOD BY IPushButton2653
--
-----------------------------------

local on_obsdoor_placed = function( pos, node, placer )
	if node.name ~= 'zlpdoors:obsdoor' then return end

	upos = { x = pos.x, y = pos.y - 1, z = pos.z }
	apos = { x = pos.x, y = pos.y + 1, z = pos.z }
	und = minetest.env:get_node( upos )
	abv = minetest.env:get_node( apos )

	dir = placer:get_look_dir()

	if     round( dir.x ) == 1  then
		newparam = WALLPX
	elseif round( dir.x ) == -1 then
		newparam = WALLMX
	elseif round( dir.z ) == 1  then
		newparam = WALLPZ
	elseif round( dir.z ) == -1 then
		newparam = WALLMZ
	end

	if und.name == 'air' then
		minetest.env:add_node( pos,  { name = 'zlpdoors:obsdoor_a_c', param2 = newparam } )
		minetest.env:add_node( upos, { name = 'zlpdoors:obsdoor_b_c', param2 = newparam } )
	elseif abv.name == 'air' then
		minetest.env:add_node( pos,  { name = 'zlpdoors:obsdoor_b_c', param2 = newparam } )
		minetest.env:add_node( apos, { name = 'zlpdoors:obsdoor_a_c', param2 = newparam } )
	else
		minetest.env:remove_node( pos )
		placer:get_inventory():add_item( "main", 'zlpdoors:obsdoor' )
		minetest.chat_send_player( placer:get_player_name(), 'not enough space' )
	end
end

local on_obsdoor_punched = function( pos, node, puncher )
	if string.find( node.name, 'zlpdoors:obsdoor' ) == nil then return end

	upos = { x = pos.x, y = pos.y - 1, z = pos.z }
	apos = { x = pos.x, y = pos.y + 1, z = pos.z }

	if string.find( node.name, '_c', -2 ) ~= nil then
		if     node.param2 == WALLPX then
			newparam = WALLMZ
		elseif node.param2 == WALLMZ then
			newparam = WALLMX
		elseif node.param2 == WALLMX then
			newparam = WALLPZ
		elseif node.param2 == WALLPZ then
			newparam = WALLPX
		end
	elseif string.find( node.name, '_o', -2 ) ~= nil then
		if     node.param2 == WALLMZ then
			newparam = WALLPX
		elseif node.param2 == WALLMX then
			newparam = WALLMZ
		elseif node.param2 == WALLPZ then
			newparam = WALLMX
		elseif node.param2 == WALLPX then
			newparam = WALLPZ
		end
	end

	if ( node.name == 'zlpdoors:obsdoor_a_c' ) then
		minetest.env:add_node( pos,  { name = 'zlpdoors:obsdoor_a_o', param2 = newparam } )
		minetest.env:add_node( upos, { name = 'zlpdoors:obsdoor_b_o', param2 = newparam } )

	elseif ( node.name == 'zlpdoors:obsdoor_b_c' ) then
		minetest.env:add_node( pos,  { name = 'zlpdoors:obsdoor_b_o', param2 = newparam } )
		minetest.env:add_node( apos, { name = 'zlpdoors:obsdoor_a_o', param2 = newparam } )

	elseif ( node.name == 'zlpdoors:obsdoor_a_o' ) then
		minetest.env:add_node( pos,  { name = 'zlpdoors:obsdoor_a_c', param2 = newparam } )
		minetest.env:add_node( upos, { name = 'zlpdoors:obsdoor_b_c', param2 = newparam } )

	elseif ( node.name == 'zlpdoors:obsdoor_b_o' ) then
		minetest.env:add_node( pos,  { name = 'zlpdoors:obsdoor_b_c', param2 = newparam } )
		minetest.env:add_node( apos, { name = 'zlpdoors:obsdoor_a_c', param2 = newparam } )

	end
end

local on_obsdoor_digged = function( pos, node, puncher )
	if string.find( node.name, 'zlpdoors:obsdoor' ) == nil then return end

	upos = { x = pos.x, y = pos.y - 1, z = pos.z }
	apos = { x = pos.x, y = pos.y + 1, z = pos.z }

	if string.find( node.name, '_c', -2 ) ~= nil then
		if     node.param2 == WALLPX then
			newparam = WALLMZ
		elseif node.param2 == WALLMZ then
			newparam = WALLMX
		elseif node.param2 == WALLMX then
			newparam = WALLPZ
		elseif node.param2 == WALLPZ then
			newparam = WALLPX
		end
	elseif string.find( node.name, '_o', -2 ) ~= nil then
		if     node.param2 == WALLMZ then
			newparam = WALLPX
		elseif node.param2 == WALLMX then
			newparam = WALLMZ
		elseif node.param2 == WALLPZ then
			newparam = WALLMX
		elseif node.param2 == WALLPX then
			newparam = WALLPZ
		end
	end

	if ( node.name == 'zlpdoors:obsdoor_a_c' ) then
		minetest.env:remove_node( pos )
		minetest.env:remove_node( upos )

	elseif ( node.name == 'zlpdoors:obsdoor_b_c' ) then
		minetest.env:remove_node( pos )
		minetest.env:remove_node( apos )

	elseif ( node.name == 'zlpdoors:obsdoor_a_o' ) then
		minetest.env:remove_node( pos )
		minetest.env:remove_node( upos )

	elseif ( node.name == 'zlpdoors:obsdoor_b_o' ) then
		minetest.env:remove_node( pos )
		minetest.env:remove_node( apos )

	end
end
--------------------------------------------------------------------------------

minetest.register_on_placenode( on_door_placed )
minetest.register_on_punchnode( on_door_punched )
minetest.register_on_dignode( on_door_digged )
--MINEFREE++ ADDON
minetest.register_on_placenode( on_irondoor_placed )
minetest.register_on_punchnode( on_irondoor_punched )
minetest.register_on_dignode( on_irondoor_digged )
minetest.register_on_placenode( on_obsdoor_placed )
minetest.register_on_punchnode( on_obsdoor_punched )
minetest.register_on_dignode( on_obsdoor_digged )
--------------------------------------------------------------------------------

print( ' ++ loaded : Doors by ZLovesPancakes' )
