function sandwiches_galore:machines/crafter/output/get_lowest_item_count
function sandwiches_galore:machines/crafter/clear_grid
clear @p #sandwiches_galore:gui_items{GUI_Item:1b}
execute if entity @s[tag=preview_knife] at @p[tag=!global.ignore] run function sandwiches_galore:machines/crafter/output/knife
execute if entity @s[tag=preview_oven] at @p[tag=!global.ignore] run function sandwiches_galore:machines/crafter/output/oven
execute if entity @s[tag=preview_corn_seeds] at @p[tag=!global.ignore] run function sandwiches_galore:machines/crafter/output/corn_seeds
execute if entity @s[tag=preview_whisk] at @p[tag=!global.ignore] run function sandwiches_galore:machines/crafter/output/whisk
execute if entity @s[tag=preview_grinder] at @p[tag=!global.ignore] run function sandwiches_galore:machines/crafter/output/grinder
execute if entity @s[tag=preview_cutting_board] at @p[tag=!global.ignore] run function sandwiches_galore:machines/crafter/output/cutting_board
execute if entity @s[tag=preview_sandwich_table] at @p[tag=!global.ignore] run function sandwiches_galore:machines/crafter/output/sandwich_table
execute if entity @s[tag=preview_large_bowl] at @p[tag=!global.ignore] run function sandwiches_galore:machines/crafter/output/large_bowl
tag @s remove previewing
tag @s remove preview_knife
tag @s remove preview_oven
tag @s remove preview_corn_seeds
tag @s remove preview_whisk
tag @s remove preview_grinder
tag @s remove preview_cutting_board
tag @s remove preview_sandwich_table
tag @s remove preview_large_bowl