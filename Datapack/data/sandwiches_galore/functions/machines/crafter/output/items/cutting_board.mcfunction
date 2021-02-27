loot spawn ~ ~ ~ loot sandwiches_galore:items/cutting_board
execute store result entity @e[type=minecraft:item,sort=nearest,limit=1] Item.Count byte 1 run scoreboard players get #lowest sandwiches
data modify entity @e[type=minecraft:item,sort=nearest,limit=1] PickupDelay set value 0s