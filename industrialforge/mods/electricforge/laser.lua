minetest.register_node("electricforge:laser", {
    drawtype = "plantlike",
    tile_images = { "laser.png" },
    inventory_image = "laser.png",
    paramtype = "light",
    is_ground_content = true,
    walkable = false,
    pointable = false,
    sunlight_propagates = true,
    damage_per_second = 5,
    alpha = 150,
    light_source = 20,
    post_effect_color = {a = 100, r = 255, g = 0, b = 0}
})

local activatelaser = function( pos, node, puncher )
	if node.name ~= 'electricforge:electroblock' then return end
	node1 = {x = pos.x,y = pos.y + 1,z = pos.z}
	node2 = {x = pos.x + 1,y = pos.y + 1,z = pos.z}
	node3 = {x = pos.x + 2,y = pos.y + 1,z = pos.z}
	nodelaser = {x = pos.x + 3,y = pos.y + 1,z = pos.z}
	if node1.name ~= 'electricforge:electroblock' and node2.name ~= 'electricforge:electroblock' and node3.name ~= 'electricforge:electroblock' then
		minetest.env:add_node(nodelaser, {name = 'electricforge:laser'})
	end
end


-----------------------------------------------------------------------------------
minetest.register_on_punchnode( activatelaser )
