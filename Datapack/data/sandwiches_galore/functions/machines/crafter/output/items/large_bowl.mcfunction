loot spawn ~ ~ ~ loot sandwiches_galore:items/large_bowl
execute store result entity @e[type=minecraft:item,sort=nearest,limit=1] Item.Count byte 1 run scoreboard players get #lowest sg.dummy
data modify entity @e[type=minecraft:item,sort=nearest,limit=1] PickupDelay set value 0s