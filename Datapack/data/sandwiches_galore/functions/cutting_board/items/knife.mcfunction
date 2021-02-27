execute positioned ^.9 ^-.84 ^.87 run data modify storage sandwiches:galore Item1 set from entity @e[type=minecraft:armor_stand,tag=sg.cutting_board_object,distance=...1,sort=nearest,limit=1] ArmorItems[3]
scoreboard players set #temp2 sandwiches 0
execute if data storage sandwiches:galore {Item1:{tag:{SG:{Bread:1b}}}} run scoreboard players set #temp2 sandwiches 1
execute if score #temp2 sandwiches matches 0 run function #sandwiches_galore:cutting_board/validate_item

execute positioned ^.9 ^-.84 ^.87 if score #temp2 sandwiches matches 0 run function sandwiches_galore:cutting_board/items/no_bread
execute positioned ^.9 ^-.84 ^.87 if score #temp2 sandwiches matches 1 run function sandwiches_galore:cutting_board/items/cut_bread1