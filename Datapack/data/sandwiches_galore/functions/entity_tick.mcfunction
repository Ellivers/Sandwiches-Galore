execute if entity @s[tag=!sg.no_fire] run function sandwiches_galore:fire
execute if entity @s[tag=crops] run function sandwiches_galore:crop_tick
execute if entity @s[tag=machines] run function sandwiches_galore:machines/check
execute if entity @s[tag=bowl] run function sandwiches_galore:bowl/tick
execute if entity @s[tag=large_bowl] run function sandwiches_galore:large_bowl/tick
execute if entity @s[tag=cutting_board] run function sandwiches_galore:cutting_board/tick