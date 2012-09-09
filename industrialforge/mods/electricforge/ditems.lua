minetest.register_tool("electricforge:reader", {
	description = "EReader",
	tile_images = {"ereader.png"},
	on_use = function(item, player, pointed_thing)
		if pointed_thing.type == "node" then
			local pnode  = minetest.env:get_node(pointed_thing)
				print(minetest.env:get_e_level(pnode))
				print(pnode.name)
			end
		end
});


