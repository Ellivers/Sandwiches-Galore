loot spawn ~ ~ ~ loot sandwiches_galore:technical/magic_item
data modify entity @e[type=minecraft:item,sort=nearest,limit=1] PickupDelay set value 0s
execute as @e[type=minecraft:item,sort=nearest,limit=1] run function sandwiches_galore:machines/sandwich_table/output/sandwich.item