tag @s remove sg.preview_buckwheat_base
loot spawn ~ ~ ~ loot sandwiches_galore:items/sandwich_buckwheat
data modify entity @e[type=minecraft:item,sort=nearest,limit=1] Item.Count set from storage sandwiches:galore Output.Count
data modify entity @e[type=minecraft:item,sort=nearest,limit=1] PickupDelay set value 0s