data modify entity @s Item set from storage sandwiches:temp root.items[{Slot:10b}]
data modify entity @s Item.Count set from storage sandwiches:galore Output.Count

execute store result score #sg.name_level sg.dummy run data get entity @s Item.tag.SG.NameLevel
execute store result score #sg.food_level sg.dummy run data get entity @s Item.tag.SG.FoodLevel
execute if data storage sandwiches:galore {Items:[{Slot:13b,id:"minecraft:cooked_beef"}]} run function sandwiches_galore:machines/sandwich_table/food/steak
execute if data storage sandwiches:galore {Items:[{Slot:13b,id:"minecraft:pufferfish"}]} run function sandwiches_galore:machines/sandwich_table/food/pufferfish
execute if data storage sandwiches:galore {Items:[{Slot:13b,id:"minecraft:gold_ingot"}]} run function sandwiches_galore:machines/sandwich_table/food/gold
execute if data storage sandwiches:galore {Items:[{Slot:13b,id:"minecraft:apple"}]} run function sandwiches_galore:machines/sandwich_table/food/apple
execute if data storage sandwiches:galore {Items:[{Slot:13b,id:"minecraft:cooked_porkchop"}]} run function sandwiches_galore:machines/sandwich_table/food/porkchop
execute if data storage sandwiches:galore {Items:[{Slot:13b,id:"minecraft:cooked_mutton"}]} run function sandwiches_galore:machines/sandwich_table/food/mutton
execute if data storage sandwiches:galore {Items:[{Slot:13b,id:"minecraft:arrow"}]} run function sandwiches_galore:machines/sandwich_table/output/sandwich_arrow
execute if data storage sandwiches:galore {Items:[{Slot:13b,id:"minecraft:ender_pearl"}]} run function sandwiches_galore:machines/sandwich_table/food/ender_pearl
function #sandwiches_galore:sandwich_table/output_sandwich

data modify entity @s PickupDelay set value 0s