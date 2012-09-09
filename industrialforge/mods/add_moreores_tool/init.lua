-- add_tool
-- Make it easier to add a tool type (e.g. gold tools, silver tools, etc.)
-- Copyright 2011 Mark Holmquist, licensed under GPLv3

-- syntax:
--   register_tool_type(mod, type, crafttype, time, uses, extra_rules)
--      mod = name of your mod
--      type = type of tool
--      crafttype = name of item used to craft the tool ('craft "default:cobble"' or similar)
--      time = speed of the tool type (lower is faster)
--      uses = durability
--      extra_rules = a table with any extra rules. example:
--         {shovel_durability = 40} -- increases the base durability of shovels by 40 uses
--         {pick_speed = -0.2} -- decreases the amount of time taken per dig by 0.2 seconds for picks

-- Please note that, if you're adding your tools using this mod, it expects your texture to be of form
--    [[modname]]_tool_[[type]]shovel.png
-- For example:
--    moreores_tool_goldpick.png

-- Updated by Calinou on 2011-01-23
-- For More Ores mod

register_tool_type = function(modname, labelname, typename, crafttype, basetime, basedurability, extra_rules)
   minetest.register_craft({
      description = labelname,
      output = 'tool "'..modname..':'..typename..'_pick'..'"',
      recipe = {
         { crafttype, crafttype, crafttype },
         { '', 'craft "default:stick"', ''},
         { '', 'craft "default:stick"', ''}
      }
   })

   minetest.register_craft({
      description = labelname,
      output = 'tool "'..modname..':'..typename..'_shovel'..'"',
      recipe = {
         { '', crafttype, '' },
         { '', 'craft "default:stick"', ''},
         { '', 'craft "default:stick"', ''}
      }
   })

   minetest.register_craft({
      description = labelname,
      output = 'tool "'..modname..':'..typename..'_axe'..'"',
      recipe = {
         { crafttype, crafttype },
         { crafttype, 'craft "default:stick"' },
         { '', 'craft "default:stick"'}
      }
   })

   minetest.register_craft({
      description = labelname,
      output = 'tool "'..modname..':'..typename..'_sword'..'"',
      recipe = {
         { crafttype },
         { crafttype },
         { 'craft "default:stick"' }
      }
   })

   local ft = basetime + (extra_rules.pick_speed or 0)
   local fd = basedurability + (extra_rules.pick_durability or 0)
   minetest.register_tool(modname..":"..typename.."_pick", {
      inventory_image = modname.."_tool_"..typename.."pick.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			cracky={times={[1]=0.5, [2]=0.3, [3]=0.2}, maxwear=0.05, maxlevel=3},
			crumbly={times={[1]=1.0, [2]=0.7, [3]=0.5}, maxwear=0.05, maxlevel=3},
			snappy={times={[1]=1.0, [2]=0.7, [3]=0.4}, maxwear=0.05, maxlevel=3}
		}
	},
   })

   ft = basetime + (extra_rules.shovel_speed or 0)
   fd = basedurability + (extra_rules.shovel_durability or 0)
   minetest.register_tool(modname..":"..typename.."_shovel", {
      inventory_image = modname.."_tool_"..typename.."shovel.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			crumbly={times={[1]=0.40, [2]=0.30, [3]=0.15}, maxwear=0.1, maxlevel=2}
		}
	},
   })

   ft = basetime + (extra_rules.axe_speed or 0)
   fd = basedurability + (extra_rules.axe_durability or 0)
   minetest.register_tool(modname..":"..typename.."_axe", {
      inventory_image = modname.."_tool_"..typename.."axe.png",	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			fleshy={times={[1]=0.70, [2]=0.20, [3]=0.10}, maxwear=0.1, maxlevel=2},
			snappy={times={[2]=0.70, [3]=0.30}, maxwear=0.03, maxlevel=1},
			choppy={times={[3]=0.70}, maxwear=0.03, maxlevel=0}
		}
	}
   })

   ft = basetime + (extra_rules.sword_speed or 0)
   fd = basedurability + (extra_rules.sword_durability or 0)
   minetest.register_tool(modname..":"..typename.."_sword", {
      inventory_image = modname.."_tool_"..typename.."sword.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			crumbly={times={[1]=0.30, [2]=0.15, [3]=0.10}, maxwear=0.1, maxlevel=2}
		}
	},
   })
end
