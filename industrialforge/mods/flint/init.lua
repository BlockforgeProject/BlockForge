minetest.register_craftitem("flint:flint", {
	description = "Flint",
	inventory_image = "arrowheads_flint_shard.png",
})

minetest.register_craftitem("flint:knapping_tools", {
	description = "Knapping Tools",
	inventory_image = "knapping_tools.png",
})

minetest.register_craft({
	output = 'flint:arrowhead',
	recipe = {
		{'flint:knapping_tools'},
		{'flint:flint_shard'},
	}
})

minetest.register_craftitem("flint:arrowhead", {
	description = "Arrowhead",
	inventory_image = "arrowhead.png",
})
minetest.register_craft({
	output = 'flint:knapping_tools',
	recipe = {
		{'default:stick'},
		{'flint:flint'},
	}
})
minetest.register_craft({
	output = 'flint:arrowhead',
	recipe = {
		{'flint:knapping_tools'},
		{'flint:flint'},
	}
})

minetest.register_node(":default:gravel", {
	description = "Gravel",
	tile_images = {"default_gravel.png"},
	is_ground_content = true,
	groups ={crumbly=2},
	drop = {
		max_items = 2,
		items = {
			{
				items = {'flint:flint'},
				rarity = 5,
			},
			{
				items = {'default:gravel'},
			}
		}
	},
})

minetest.register_craftitem("flint:flint_n_steel" , {
    image = "flint_n_steel.png",
    stack_max = 1,

    on_use = function(item, player, pointed_thing)
        if pointed_thing.type == "node" then
            print("Flint and Steel used (" .. pointed_thing.under.x .. ',' .. pointed_thing.under.y .. ',' .. pointed_thing.under.z .. ')')
            if(math.random(1, 6) ~= 1) then
                return burn(pointed_thing.under)
            else
            end
        end
    end
})


minetest.register_craft({
    output = 'craft "flint:flint_n_steel" 1',
    recipe = {
        {'default:steel_ingot' },
        {'craft "flint:flint"' },
    }
})

local FIRE_SPREAD_DELAY = 7
local FIRE_DISAPPEAR_DELAY = 8
local SMOKE_DISAPPEAR_DELAY = 8
local SMOKE_COLLISION_BOX = 1


local flammable = {
    "default:tree",
    "default:wood",
    "default:jungletree",
    "default:leaves"
}

minetest.register_node("flint:smoke", {
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

minetest.register_node("flint:fire", {
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

minetest.register_craftitem("flint:flint_n_steel" , {
    image = "flint_and_steel.png",
    stack_max = 1,

    on_use = function(item, player, pointed_thing)
        if pointed_thing.type == "node" then
            print("[fire] Flint & Steel used (" .. pointed_thing.under.x .. ',' .. pointed_thing.under.y .. ',' .. pointed_thing.under.z .. ')')
            if(math.random(1, 6) ~= 1) then
                return burn(pointed_thing.under)
            else
                return true
            end
        end
        return false
    end
})

minetest.register_abm({
    nodenames = { "flint:fire" },
    interval = FIRE_DISAPPEAR_INTERVAL,
    chance = 4,

    action = function(pos, node, _, __)
        minetest.env:remove_node(pos)
        create_smoke(pos)
    end
})

minetest.register_abm({
    nodenames = { "flint:smoke" },
    interval = FIRE_DISAPPEAR_INTERVAL,
    chance = 4,

    action = function(pos, node, _, __)
        minetest.env:remove_node(pos)
    end
})





minetest.register_abm({
    nodenames = { "flint:fire" },
    interval = FIRE_DISAPPEAR_INTERVAL,
    chance = 4,

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
                burn(new_pos)
            end
        end
        end
        end
    end
})

function burn(pos)
    local node = minetest.env:get_node(pos)
    
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
        return false
    end
    if minetest.registered_nodes[node.name].furnace_burntime > -1 then
        minetest.env:remove_node(pos)
        minetest.env:add_node(pos, {name = "flint:fire"})
        create_smoke(pos)
        return true
    else
        return false
    end
end

minetest.register_entity( "flint:smoke_ent", {
    physical = false,
    textures = { "smoke.png" },
    timer = 0,

    on_step = function(self, dtime)
        self.timer = self.timer + dtime
        if(self.timer >= math.random(3, 10))
        or minetest.env:get_node(self.object:getpos()).name ~= "air" then
            self.object:remove()
        end
    end
})


function create_smoke(pos)
    local pos_above = {
        x = pos.x,
        y = pos.y + 1,
        z = pos.z
    }
    if minetest.env:get_node(pos_above).name ~= "air" then
        return
    end
    local smoke = minetest.env:add_entity({
        x = pos.x,
        y = pos.y,
        z = pos.z,
    }, "flint:smoke_ent")
    smoke:setvelocity({
        x = 0,
        y = math.random(1, 3),
        z = 0
    })
end

