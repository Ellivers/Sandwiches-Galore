loot spawn ~ ~.1 ~ loot sandwiches_galore:items/corn_kernels

scoreboard players remove #lowest sg.dummy 127
execute positioned ~ ~.1 ~ store result entity @e[type=minecraft:item,sort=nearest,limit=1] Item.Count byte 1 run scoreboard players get #lowest sg.dummy
execute positioned ~ ~.1 ~ run data modify entity @e[type=minecraft:item,sort=nearest,limit=1] PickupDelay set value 0s