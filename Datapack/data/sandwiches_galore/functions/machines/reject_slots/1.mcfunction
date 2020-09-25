data remove block ~ ~ ~ Items[{Slot:1b}]
execute at @p[tag=!global.ignore] run loot spawn ~ ~ ~ loot sandwiches_galore:items/magic_item
data modify entity @e[type=minecraft:item,nbt={Item:{tag:{Special:1b,SandwichesGalore:1b}}},limit=1] Item set from entity @s ArmorItems[2]

