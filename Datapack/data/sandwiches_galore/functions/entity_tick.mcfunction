execute if entity @s[tag=!sg.no_fire] run function sandwiches_galore:fire
execute if entity @s[tag=sg.crop] run function sandwiches_galore:crop_tick
execute if entity @s[tag=sg.machine] run function sandwiches_galore:machines/check
execute if entity @s[tag=sg.bowl] run function sandwiches_galore:bowl/tick.small_bowl
execute if entity @s[tag=sg.large_bowl] run function sandwiches_galore:bowl/tick.large_bowl
execute if entity @s[tag=sg.cutting_board] run function sandwiches_galore:cutting_board/tick
execute if entity @s[tag=sg.sandwich_arrow] run function sandwiches_galore:items/sandwich/arrow/tick
execute if entity @s[tag=sg.sandwich_arrow_marker,tag=!sg.processed] run function sandwiches_galore:items/sandwich/arrow/shoot.armor_stand
