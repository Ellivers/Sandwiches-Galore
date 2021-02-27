tag @s remove sg.has_item
execute positioned ^.9 ^-.84 ^.87 as @e[type=minecraft:armor_stand,tag=sg.cutting_board_object,distance=...1,sort=nearest,limit=1] run function sandwiches_galore:cutting_board/remove_item2
execute positioned ^1 ^-.9 ^.5 as @e[type=minecraft:armor_stand,tag=sg.cutting_board_object,tag=sg.slice,distance=...3] run function sandwiches_galore:cutting_board/remove_item2