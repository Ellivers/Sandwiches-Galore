scoreboard players set @s sg.heat 14

# Check fuel
scoreboard players reset @s sg.heat_delay
scoreboard players set #remove_item sg.dummy 1
execute unless score @s sg.heat_delay matches 1.. if data storage sandwiches:temp root.items[{Slot:20b,id:"minecraft:lava_bucket"}] run scoreboard players set @s sg.heat_delay 1477
execute if score @s sg.heat_delay matches 1477 if data storage sandwiches:temp root.items[{Slot:20b,id:"minecraft:lava_bucket"}] run item replace block ~ ~ ~ container.20 with minecraft:bucket
execute if score @s sg.heat_delay matches 1477 run scoreboard players set #remove_item sg.dummy 0
execute unless score @s sg.heat_delay matches 1.. if data storage sandwiches:temp root.items[{Slot:20b,id:"minecraft:coal"}] run scoreboard players set @s sg.heat_delay 119
execute unless score @s sg.heat_delay matches 1.. if data storage sandwiches:temp root.items[{Slot:20b,id:"minecraft:charcoal"}] run scoreboard players set @s sg.heat_delay 119
execute unless score @s sg.heat_delay matches 1.. run function #sandwiches_galore:oven/burn_fuel

# Set GUI items
loot replace block ~ ~ ~ container.11 loot sandwiches_galore:technical/gui_fire
loot replace block ~ ~ ~ container.13 loot sandwiches_galore:technical/gui_arrow

# Remove 1 fuel item
execute unless score #remove_item sg.dummy matches 0 store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run data get storage sandwiches:temp root.items[{Slot:20b}].Count 0.9999999999

# Set the "on" model
data modify entity @s item.tag.CustomModelData set value 6710010
