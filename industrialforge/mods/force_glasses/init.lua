--FORCE GLASSES BY LORENZOVULCAN
--SCRIPTED FOR BLOCKFORGE PROJECT

minetest.register_node("force_glasses:ironglass", {
    tile_images = {"iron_glass.png"},
    drawtype = "glasslike",
    sunlight_propagates = true,
    is_ground_content = true,
    paramtype = "light",
    inventory_image = {"iron_glass.png"},

minetest.inventorycube("iron_glass.png"),
    is_ground_content = false,
    groups = {cracky=4},
})

minetest.register_node("force_glasses:goldglass", {
    tile_images = {"gold_glass.png"},
    drawtype = "glasslike",
    sunlight_propagates = true,
    is_ground_content = true,
    paramtype = "light",
    inventory_image = {"gold_glass.png"},

minetest.inventorycube("gold_glass.png"),
    is_ground_content = false,
    groups = {cracky=5},
})

minetest.register_node("force_glasses:meseglass", {
    tile_images = {"mese_glass.png"},
    drawtype = "glasslike",
    sunlight_propagates = true,
    is_ground_content = true,
    paramtype = "light",
    inventory_image = {"mese_glass.png"},

minetest.inventorycube("mese_glass.png"),
    is_ground_content = false,
    groups = {cracky=6},
})

minetest.register_node("force_glasses:elementalglass", {
    tile_images = {"elemental_glass.png"},
    drawtype = "glasslike",
    sunlight_propagates = true,
    is_ground_content = true,
    paramtype = "light",
    inventory_image = {"elemental_glass.png"},

minetest.inventorycube("elemental_glass.png"),
    is_ground_content = false,
    groups = {cracky=7},
})

--RECIPES
minetest.register_craft({
	output = 'force_glasses:ironglass 3',
	recipe = {
		{'default:glass', 'default:glass', 'default:glass'},
		{'default:glass', 'default:steel_ingot', 'default:glass'},
	}
})

minetest.register_craft({
	output = 'force_glasses:goldglass 3',
	recipe = {
		{'default:glass', 'default:glass', 'default:glass'},
		{'default:glass', 'moreores:gold_ingot', 'default:glass'},
	}
})

minetest.register_craft({
	output = 'force_glasses:meseglass 3',
	recipe = {
		{'default:glass', 'default:glass', 'default:glass'},
		{'default:glass', 'default:mese', 'default:glass'},
	}
})

minetest.register_craft({
	output = 'force_glasses:elementalglass 3',
	recipe = {
		{'force_glasses:ironglass', 'force_glasses:ironglass', 'force_glasses:ironglass'},
		{'force_glasses:goldglass', 'force_glasses:goldglass', 'force_glasses:goldglass'},
		{'force_glasses:meseglass', 'force_glasses:meseglass', 'force_glasses:meseglass'},
	}
})
	



