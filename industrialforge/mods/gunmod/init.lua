-- Gun mod by Luizbr507 and with thmr's textures!
-- Based on Jeijas throwing mod, check it out here: http://c55.me/minetest/forum/viewtopic.php?id=687

BULLET1_DAMAGE=3
BULLET1_GRAVITY=9
BULLET1_VELOCITY=20
--DICHIARAZIONI MINEFREE++
BULLET2_DAMAGE=9
BULLET2_GRAVITY=5
BULLET2_VELOCITY=30
BULLETM4_DAMAGE=12
BULLETM4_GRAVITY=4
GRANADE_DAMAGE=1
GRANADE_GRAVITY=-10
GRANADE_VELOCITY=15
GRANADE_RANGE=5

gunmod_shoot_bullet1=function (item, player, pointed_thing)
	-- Check if arrows in Inventory and remove one of them
	if player:get_inventory():contains_item("main", "gunmod:bullet1") then
		player:get_inventory():remove_item("main", "gunmod:bullet1")

			-- Shoot Arrow
			local playerpos=player:getpos()
			local obj=minetest.env:add_entity({x=playerpos.x,y=playerpos.y+1.5,z=playerpos.z}, "gunmod:bullet1_entity")
			local dir=player:get_look_dir()
			obj:setvelocity({x=dir.x*BULLET1_VELOCITY, y=dir.y*BULLET1_VELOCITY, z=dir.z*BULLET1_VELOCITY})
			obj:setacceleration({x=dir.x*-3, y=-BULLET1_GRAVITY, z=dir.z*-3})
			 -- Arrow shot, leave loop that checks for arrows in inventory
	end
	return
end

--MINEFREE++ ADDON
--LANCIO DEL PROIETTILE DEL FUCILE
gunmod_shoot_bullet2=function (item, player, pointed_thing)
	-- Check if arrows in Inventory and remove one of them
	if player:get_inventory():contains_item("main", "gunmod:bullet2") then
		player:get_inventory():remove_item("main", "gunmod:bullet2")

			-- Shoot Arrow
			local playerpos=player:getpos()
			local obj=minetest.env:add_entity({x=playerpos.x,y=playerpos.y+1.5,z=playerpos.z}, "gunmod:bullet2_entity")
			local dir=player:get_look_dir()
			obj:setvelocity({x=dir.x*BULLET2_VELOCITY, y=dir.y*BULLET2_VELOCITY, z=dir.z*BULLET2_VELOCITY})
			obj:setacceleration({x=dir.x*-3, y=-BULLET2_GRAVITY, z=dir.z*-3})
			 -- Arrow shot, leave loop that checks for arrows in inventory
	end
	return
end

gunmod_shoot_bulletm4=function (item, player, pointed_thing)
	-- Check if arrows in Inventory and remove one of them
	for x=1, 5 do
	if player:get_inventory():contains_item("main", "gunmod:bulletm4") then
		player:get_inventory():remove_item("main", "gunmod:bulletm4")

			-- Shoot Arrow
			BULLETM4_VELOCITY=100
			local playerpos=player:getpos()
			local obj=minetest.env:add_entity({x=playerpos.x,y=playerpos.y+1.5,z=playerpos.z}, "gunmod:bulletm4_entity")
			local dir=player:get_look_dir()
			obj:setvelocity({x=dir.x*BULLETM4_VELOCITY, y=dir.y*BULLETM4_VELOCITY, z=dir.z*BULLETM4_VELOCITY})
			obj:setacceleration({x=dir.x*-3, y=-BULLETM4_GRAVITY, z=dir.z*-3})
			BULLETM4_VELOCITY=BULLETM4_VELOCITY-5
			 -- Arrow shot, leave loop that checks for arrows in inventory
	end
	end
	return
end

--LANCIO GRANATE
gunmod_shoot_granade=function (item, player, pointed_thing)
	-- Check if arrows in Inventory and remove one of them
	if player:get_inventory():contains_item("main", "gunmod:granade") then
		player:get_inventory():remove_item("main", "gunmod:granade")

			-- Shoot Arrow
			local playerpos=player:getpos()
			local obj=minetest.env:add_entity({x=playerpos.x,y=playerpos.y+1.5,z=playerpos.z}, "gunmod:granade_entity")
			local dir=player:get_look_dir()
			obj:setvelocity({x=dir.x*GRANADE_VELOCITY, y=dir.y*GRANADE_VELOCITY, z=dir.z*GRANADE_VELOCITY})
			obj:setacceleration({x=dir.x*-3, y=GRANADE_GRAVITY, z=dir.z*-3})
			local pos = obj:getpos()
       			   pos.x = math.floor(pos.x+0.5)
        		   pos.y = math.floor(pos.y+0.5)
       		           pos.z = math.floor(pos.z+0.5)
     			   for x=-GRANADE_RANGE,GRANADE_RANGE do
    		           for y=-GRANADE_RANGE,GRANADE_RANGE do
      			   for z=-GRANADE_RANGE,GRANADE_RANGE do
        	           if x*x+y*y+z*z <= GRANADE_RANGE * GRANADE_RANGE + GRANADE_RANGE then
             		   local np={x=playerpos.x+x,y=playerpos.y+y,z=playerpos.z+z}
           		   local n = minetest.env:get_node(np)
               			 if n.name ~= "air" then
                  	         minetest.env:remove_node(np)
              		         end
				return
			end
		end
	end
	end
end
end
--FINE MINEFREE++ ADDON

minetest.register_craftitem("gunmod:woodgun", {
	image = "gunmod_woodgun.png",
	on_place_on_ground = minetest.craftitem_place_item,
	on_use = gunmod_shoot_bullet1,
	description = "Wooden gun"
})
minetest.register_craftitem("gunmod:irongun", {
	image = "gunmod_irongun.png",
	on_place_on_ground = minetest.craftitem_place_item,
	on_use = gunmod_shoot_bullet2,
	description = "Iron gun"
})

--MINEFREE++ ADDON
--FUCILE IN IRON
minetest.register_craftitem("gunmod:ironrifle", {
	image = "gunmod_ironrifle.png",
	on_place_on_ground = minetest.craftitem_place_item,
	on_use = gunmod_shoot_bullet2,
	description = "Iron rifle"
})
minetest.register_craftitem("gunmod:m4", {
	image = "m4.png",
	on_place_on_ground = minetest.craftitem_place_item,
	on_use = gunmod_shoot_bulletm4,
	description = "M4 Rifle"
})
minetest.register_craftitem("gunmod:compressed_coal", {
	image = "gunmod_comprcoal.png",
	description = "Compressed Plate"
})
minetest.register_craftitem("gunmod:raw_plate", {
	image = "gunmod_rawplate.png",
	description = "Raw Plate"
})

--PROIETTILI PER FUCILE
minetest.register_craftitem("gunmod:bullet2", {
	image = "gunmod_bullet2.png",
	on_place_on_ground = minetest.craftitem_place_item,
	description = "Rifle Bullets"
})
--PROIETTILI PER FUCILE M4
minetest.register_craftitem("gunmod:bulletm4", {
	image = "gunmod_bulletm4.png",
	on_place_on_ground = minetest.craftitem_place_item,
	description = "M4 Bullets"
})
--[[LANCIAGRANATE
minetest.register_craftitem("gunmod:granadelauncher", {
	image = "gunmod_lanciagranate.png",
	on_place_on_ground = minetest.craftitem_place_item,
	on_use = gunmod_shoot_granade,
	description = "Granade Launcher"
})
--GRANATE
minetest.register_craftitem("gunmod:granade", {
	image = "gunmod_granate.png",
	on_place_on_ground = minetest.craftitem_place_item,
	description = "Granades"
})]]--
--FINE MINEFREE++ ADDON



minetest.register_craftitem("gunmod:bullet1", {
	image = "gunmod_bullet1.png",
	on_place_on_ground = minetest.craftitem_place_item,
	description = "Gun Bullets"
})
minetest.register_craftitem("gunmod:ironstick", {
	image = "gunmod_ironstick.png",
	on_place_on_ground = minetest.craftitem_place_item,
	description = "Iron Stick"
})
minetest.register_craftitem("gunmod:usedbullet1", {
	image = "gunmod_usedbullet1.png",
	on_place_on_ground = minetest.craftitem_place_item,
	description = "Useless Bullet"
})
minetest.register_craftitem("gunmod:rawbullet1", {
	image = "gunmod_rawbullet1.png",
	on_place_on_ground = minetest.craftitem_place_item,
	description = "Raw Bullet"
})
minetest.register_craft({
	type = "cooking",
	output = "gunmod:bullet1",
	recipe = "gunmod:rawbullet1",
})
minetest.register_craft({
	type = "cooking",
	output = "gunmod:compressed_coal",
	recipe = "gunmod:raw_plate",
})
--cookresult_itemstring = 'gunmod:bullet1 1',
-- The Arrow Entity

GUNMOD_BULLET1_ENTITY={
	physical = false,
	timer=0,
	textures = {"gunmod_bullet1_back.png"},
	lastpos={},
	collisionbox = {0,0,0,0,0,0},
}

GUNMOD_BULLET2_ENTITY={
	physical = false,
	timer=0,
	textures = {"gunmod_bullet1_back.png"},
	lastpos={},
	collisionbox = {0,0,0,0,0,0},
}

GUNMOD_BULLETM4_ENTITY={
	physical = false,
	timer=0,
	textures = {"gunmod_bullet1_back.png"},
	lastpos={},
	collisionbox = {0,0,0,0,0,0},
}

GUNMOD_GRANADE_ENTITY={
	physical = false,
	timer=0,
	textures = {"gunmod_granate.png"},
	lastpos={},
	collisionbox = {0,0,0,0,0,0},
}

-- Arrow_entity.on_step()--> called when arrow is moving
GUNMOD_BULLET1_ENTITY.on_step = function(self, dtime)
	self.timer=self.timer+dtime
	local pos = self.object:getpos()
	local node = minetest.env:get_node(pos)

	-- When arrow is away from player (after 0.2 seconds): Cause damage to mobs and players
	if self.timer>0.2 then
		local objs = minetest.env:get_objects_inside_radius({x=pos.x,y=pos.y,z=pos.z}, 2)
		for k, obj in pairs(objs) do
			obj:set_hp(obj:get_hp()-BULLET1_DAMAGE)
			if obj:get_entity_name() ~= "gunmod:bullet1_entity" then
				if obj:get_hp()<=0 then
					obj:remove()
				end
				self.object:remove()
			end
		end
	end

	-- Become item when hitting a node
	if self.lastpos.x~=nil then --If there is no lastpos for some reason
		if node.name ~= "air" then
			minetest.env:add_item(self.lastpos, 'gunmod:usedbullet1 1')
			self.object:remove()
		end
	end
	self.lastpos={x=pos.x, y=pos.y, z=pos.z} -- Set lastpos-->Item will be added at last pos outside the node
end

minetest.register_entity("gunmod:bullet1_entity", GUNMOD_BULLET1_ENTITY)

--

--MINEFREE++ ADDON

--
--RIFLE BULLET
GUNMOD_BULLET2_ENTITY.on_step = function(self, dtime)
	self.timer=self.timer+dtime
	local pos = self.object:getpos()
	local node = minetest.env:get_node(pos)

	-- When arrow is away from player (after 0.2 seconds): Cause damage to mobs and players
	if self.timer>0.2 then
		local objs = minetest.env:get_objects_inside_radius({x=pos.x,y=pos.y,z=pos.z}, 2)
		for k, obj in pairs(objs) do
			obj:set_hp(obj:get_hp()-BULLET2_DAMAGE)
			if obj:get_entity_name() ~= "gunmod:bullet2_entity" then
				if obj:get_hp()<=0 then
					obj:remove()
				end
				self.object:remove()
			end
		end
	end

	if self.lastpos.x~=nil then --If there is no lastpos for some reason
		if node.name ~= "air" then
			self.object:remove()
		end
	end
	self.lastpos={x=pos.x, y=pos.y, z=pos.z}
end

minetest.register_entity("gunmod:bullet2_entity", GUNMOD_BULLET2_ENTITY)
------------------------------------------------------------------------------------------------------------------
GUNMOD_BULLETM4_ENTITY.on_step = function(self, dtime)
	self.timer=self.timer+dtime
	local pos = self.object:getpos()
	local node = minetest.env:get_node(pos)

	-- When arrow is away from player (after 0.2 seconds): Cause damage to mobs and players
	if self.timer>0.2 then
		local objs = minetest.env:get_objects_inside_radius({x=pos.x,y=pos.y,z=pos.z}, 2)
		for k, obj in pairs(objs) do
			obj:set_hp(obj:get_hp()-BULLET2_DAMAGE)
			if obj:get_entity_name() ~= "gunmod:bulletm4_entity" then
				if obj:get_hp()<=0 then
					obj:remove()
				end
				self.object:remove()
			end
		end
	end

	if self.lastpos.x~=nil then --If there is no lastpos for some reason
		if node.name ~= "air" then
			self.object:remove()
		end
	end
	self.lastpos={x=pos.x, y=pos.y, z=pos.z}
end

minetest.register_entity("gunmod:bulletm4_entity", GUNMOD_BULLET2_ENTITY)
-------------------------------------------------------------------------------------------------------------------
GUNMOD_GRANADE_ENTITY.on_step = function(self, dtime, pos)
	self.timer=self.timer+dtime
	local pos = self.object:getpos()
	local node = minetest.env:get_node(self.lastpos)


	-- When arrow is away from player (after 0.2 seconds): Cause damage to mobs and players
	if self.timer>0.2 then
		local objs = minetest.env:get_objects_inside_radius({x=pos.x,y=pos.y,z=pos.z}, 2)
		for k, obj in pairs(objs) do
			obj:set_hp(obj:get_hp()-GRANADE_DAMAGE)
			if obj:get_entity_name() ~= "gunmod:granade_entity" then
				if obj:get_hp()<=0 then
					obj:remove()
				end
				self.object:remove()
			end
		end
	end

	if self.lastpos.x~=nil then --If there is no lastpos for some reason
		if node.name ~= "air" then
			local node = minetest.env:get_node(self.lastpos)
			print('Granade launched!')
			minetest.env:remove_node(node)
			minetest.env:add_item(node, 'gunmod:granade 1')
			self.object:remove()
		end
	end
	self.lastpos={x=pos.x, y=pos.y, z=pos.z}
end


minetest.register_entity("gunmod:granade_entity", GUNMOD_GRANADE_ENTITY)





--CRAFTS


minetest.register_craft({
	output = 'gunmod:woodgun 1',
	recipe = {
		{'default:steel_ingot', 'default:wood', 'default:wood'},
		{'default:steel_ingot', 'default:steel_ingot', 'default:stick'},
		{'', '', 'default:stick'},
	}
})
minetest.register_craft({
	output = 'gunmod:irongun 1',
	recipe = {
		{'default:steel_ingot', 'default:wood', 'default:wood'},
		{'default:steel_ingot', 'default:steel_ingot', 'gunmod:ironstick'},
		{'', '', 'gunmod:ironstick'},
	}
})

minetest.register_craft({
	output = 'gunmod:bullet1 3',
	recipe = {
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
	}
})
minetest.register_craft({
	output = 'gunmod:ironstick 2',
	recipe = {
		{'default:steel_ingot'},
	}
})
minetest.register_craft({
	output = 'gunmod:rawbullet1 1',
	recipe = {
		{'gunmod:usedbullet1', 'gunmod:usedbullet1'},
	}
})
--MINEFREE++ ADDON
--RIFLE BULLET
minetest.register_craft({
	output = 'gunmod:bullet2 3',
	recipe = {
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
        {'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
	}
})
minetest.register_craft({
	output = 'gunmod:ironrifle 1',
	recipe = {
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
		{'default:steel_ingot', 'default:steel_ingot', 'gunmod:ironstick'},
		{'', 'gunmod:ironstick', 'default:wood'},
	}
})
minetest.register_craft({
	output = 'gunmod:m4 1',
	recipe = {
		{'electricforge:industrial_iron', 'electricforge:industrial_iron', 'electricforge:industrial_iron'},
		{'default:steel_ingot', 'default:steel_ingot', 'electricforge:electroblock'},
		{'', 'gunmod:ironstick', 'gunmod:compressed_coal'},
	}
})
minetest.register_craft({
	output = 'gunmod:raw_plate 2',
	recipe = {
		{'electricforge:industrial_iron', 'electricforge:industrial_iron', ''},
		{'electricforge:industrial_iron', 'electricforge:industrial_iron', ''},
	}
})
--[[LANCIAGRANATE
minetest.register_craft({
	output = 'gunmod:granadelauncher 1',
	recipe = {
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
		{'default:steel_ingot', 'default:steel_ingot', 'gunmod:ironstick'},
		{'', 'default:steel_ingot', 'gunmod:ironstick'},
	}
})
]]--
--RIFLE BULLET
minetest.register_craft({
	output = 'gunmod:ironbullet 2',
	recipe = {
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
        {'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
	}
})
minetest.register_craft({
	output = 'gunmod:bulletm4 5',
	recipe = {
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
        {'default:steel_ingot', 'gunmod:compressed_coal', 'default:steel_ingot'},
	}
})
--[[GRANATA
minetest.register_craft({
	output = 'gunmod:granade 2',
	recipe = {
	{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
        {'default:steel_ingot', 'gunmod:compressed_coal', 'default:steel_ingot'},
        {'default:steel_ingot', 'gunmod:compressed_coal', 'default:steel_ingot'},
	}
})
--]]
--FINE MINEFREE++ ADDON
print ("[Gunmod_mod] Loaded!")
print ("Minefree addon By LorenzoVulcan Loaded!")

