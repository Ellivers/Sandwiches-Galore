data modify entity @s ArmorItems[2] set from block ~.01 ~ ~ Items[{Slot:11b}]
loot replace block ~ ~ ~ container.11 loot sandwiches_galore:items/gui_fire
execute at @p[tag=!global.ignore] run loot spawn ~ ~ ~ loot sandwiches_galore:items/magic_item
data modify entity @e[type=minecraft:item,nbt={Item:{tag:{Special:1b,SandwichesGalore:1b}}},limit=1] Item set from entity @s ArmorItems[2]