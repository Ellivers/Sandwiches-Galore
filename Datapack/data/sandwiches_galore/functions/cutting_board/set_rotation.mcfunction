execute if entity @s[tag=sg.rot0] run tag @e[type=armor_stand,tag=sandwiches_galore,tag=sg.cutting_board_object,sort=nearest,limit=1] add sg.rot0
execute if entity @s[tag=sg.rot90] run tag @e[type=armor_stand,tag=sandwiches_galore,tag=sg.cutting_board_object,sort=nearest,limit=1] add sg.rot90
execute if entity @s[tag=sg.rot180] run tag @e[type=armor_stand,tag=sandwiches_galore,tag=sg.cutting_board_object,sort=nearest,limit=1] add sg.rot180
execute if entity @s[tag=sg.rot-90] run tag @e[type=armor_stand,tag=sandwiches_galore,tag=sg.cutting_board_object,sort=nearest,limit=1] add sg.rot-90
execute as @e[type=armor_stand,tag=sandwiches_galore,tag=sg.cutting_board_object,sort=nearest,limit=1] run function sandwiches_galore:cutting_board/set_rotation2