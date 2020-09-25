loot spawn ~ ~ ~ loot sandwiches_galore:items/corn_seeds

scoreboard players operation #lowest sandwiches *= #3 sandwiches
scoreboard players operation #lowest2 sandwiches = #lowest sandwiches
execute if score #lowest sandwiches matches 128.. run scoreboard players set #lowest2 sandwiches 127

execute store result entity @e[type=minecraft:item,sort=nearest,limit=1] Item.Count byte 1 run scoreboard players get #lowest2 sandwiches
data modify entity @e[type=minecraft:item,sort=nearest,limit=1] PickupDelay set value 0s

execute if score #lowest sandwiches matches 128.. run function sandwiches_galore:machines/crafter/output/corn_seeds2