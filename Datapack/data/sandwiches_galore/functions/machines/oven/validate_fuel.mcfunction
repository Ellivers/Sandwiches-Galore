summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["sandwiches_galore","sg.temp_item"]}
data modify entity @e[type=minecraft:armor_stand,tag=sandwiches_galore,tag=sg.temp_item,sort=nearest,limit=1] ArmorItems[2] set value {}
data modify entity @e[type=minecraft:armor_stand,tag=sandwiches_galore,tag=sg.temp_item,sort=nearest,limit=1] ArmorItems[2] set from storage sandwiches:temp root.items[{Slot:20b}]

scoreboard players set #temp2 sg.dummy 0
execute as @e[type=minecraft:armor_stand,tag=sandwiches_galore,tag=sg.temp_item,sort=nearest,limit=1] if predicate sandwiches_galore:oven/fuel_items run scoreboard players set #temp2 sg.dummy 1
execute if score #temp2 sg.dummy matches 0 run function #sandwiches_galore:oven/validate_fuel

kill @e[type=minecraft:armor_stand,tag=sandwiches_galore,tag=sg.temp_item,sort=nearest,limit=1]
