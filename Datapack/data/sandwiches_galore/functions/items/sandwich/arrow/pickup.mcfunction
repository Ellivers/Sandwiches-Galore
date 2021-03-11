execute at @p[gamemode=!creative,gamemode=!spectator] run loot spawn ~ ~.1 ~ loot sandwiches_galore:technical/magic_item
data modify entity @e[type=minecraft:item,nbt={Item:{tag:{SG:{Special:1b}}}},limit=1] PickupDelay set value 0s
data modify entity @e[type=minecraft:item,nbt={Item:{tag:{SG:{Special:1b}}}},limit=1] Item set from entity @e[type=armor_stand,tag=sandwiches_galore,tag=sg.sandwich_arrow_marker,sort=nearest,limit=1] ArmorItems[0]

kill @e[type=armor_stand,tag=sandwiches_galore,tag=sg.sandwich_arrow_marker,predicate=sandwiches_galore:on_arrow,sort=nearest,limit=1]
kill @s