data remove block ~ ~ ~ Items[{Slot:0b}]
execute at @p[tag=!global.ignore,distance=..8,gamemode=!spectator] run loot spawn ~ ~ ~ loot sandwiches_galore:items/magic_item
execute unless entity @a[distance=..8,gamemode=!spectator] run loot spawn ~ ~.8 ~ loot sandwiches_galore:items/magic_item
data modify entity @e[type=minecraft:item,nbt={Item:{tag:{Special:1b,SandwichesGalore:1b}}},limit=1] Item set from entity @s ArmorItems[2]