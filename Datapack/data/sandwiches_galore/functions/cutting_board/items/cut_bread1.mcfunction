tag @s add sg.has_item
data modify storage sandwiches:galore Item1 set from entity @s HandItems[0]
data modify storage sandwiches:galore Item1.Slot set value 0b
loot replace entity @s weapon.mainhand loot sandwiches_galore:technical/cutting_board_right_click
execute as @e[type=minecraft:armor_stand,tag=sg.cutting_board_object,distance=...1,sort=nearest,limit=1] run function sandwiches_galore:cutting_board/items/cut_bread2