data modify storage sandwiches:oven_gui Items set from block ~ ~ ~ Items

scoreboard players set @s sg.heat 14
# Check fuel
execute if predicate sandwiches_galore:fuel/8 run scoreboard players set @s sg.heat_delay 119
execute if predicate sandwiches_galore:fuel/100 run scoreboard players set @s sg.heat_delay 1477

loot replace block ~ ~ ~ container.11 loot sandwiches_galore:items/gui_fire
loot replace block ~ ~ ~ container.13 loot sandwiches_galore:items/gui_arrow
execute unless data storage sandwiches:oven_gui Items[{Slot:20b,Count:1b}] store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run data get storage sandwiches:oven_gui Items[{Slot:20b}].Count 0.9999999999
execute unless predicate sandwiches_galore:fuel/100 if data storage sandwiches:oven_gui Items[{Slot:20b,Count:1b}] run data remove block ~ ~ ~ Items[{Slot:20b}]
execute if predicate sandwiches_galore:fuel/100 run replaceitem block ~ ~ ~ container.20 minecraft:bucket