execute if entity @s[tag=sg.crop] run function sandwiches_galore:crops/interact/load
execute unless entity @s[tag=!sg.bowl,tag=!sg.large_bowl] if predicate sandwiches_galore:holding_item run function sandwiches_galore:bowl/item_input
execute if entity @s[tag=sg.cutting_board,predicate=!sandwiches_galore:cutting_board/none] align xyz run function sandwiches_galore:cutting_board/item_input.check_rot
execute if entity @s[tag=sg.corn.upper,tag=sg.ready,predicate=!sandwiches_galore:corn_none] run function sandwiches_galore:crops/corn/take_corn

data remove entity @s interaction
