loot spawn ~ ~.1 ~ loot sandwiches_galore:items/corn_seeds

scoreboard players remove #lowest sandwiches 127
execute positioned ~ ~.1 ~ store result entity @e[type=minecraft:item,sort=nearest,limit=1] Item.Count byte 1 run scoreboard players get #lowest sandwiches
execute positioned ~ ~.1 ~ run data modify entity @e[type=minecraft:item,sort=nearest,limit=1] PickupDelay set value 0s