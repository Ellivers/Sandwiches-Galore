function sandwiches_galore:machines/crafter/output/get_item_counts
function sandwiches_galore:machines/crafter/remove_1_from_all_items_in_the_grid
clear @p #sandwiches_galore:gui_items{GUI_Item:1b}
execute if entity @s[tag=preview_knife] at @p[tag=!global.ignore] run loot spawn ~ ~ ~ loot sandwiches_galore:items/bread_knife
execute if entity @s[tag=preview_oven] at @p[tag=!global.ignore] run loot spawn ~ ~ ~ loot sandwiches_galore:items/oven
execute if entity @s[tag=preview_corn_seeds] at @p[tag=!global.ignore] run loot spawn ~ ~ ~ loot sandwiches_galore:items/3_corn_seeds
execute if entity @s[tag=preview_whisk] at @p[tag=!global.ignore] run loot spawn ~ ~ ~ loot sandwiches_galore:items/whisk
execute if entity @s[tag=preview_grinder] at @p[tag=!global.ignore] run loot spawn ~ ~ ~ loot sandwiches_galore:items/grinder
execute if entity @s[tag=preview_cutting_board] at @p[tag=!global.ignore] run loot spawn ~ ~ ~ loot sandwiches_galore:items/cutting_board
execute if entity @s[tag=preview_sandwich_table] at @p[tag=!global.ignore] run loot spawn ~ ~ ~ loot sandwiches_galore:items/sandwich_table
execute if entity @s[tag=preview_large_bowl] at @p[tag=!global.ignore] run loot spawn ~ ~ ~ loot sandwiches_galore:items/large_bowl
execute at @p[tag=!global.ignore] run data modify entity @e[type=minecraft:item,sort=nearest,limit=1] PickupDelay set value 0s
tag @s remove previewing
tag @s remove preview_knife
tag @s remove preview_oven
tag @s remove preview_corn_seeds
tag @s remove preview_whisk
tag @s remove preview_grinder
tag @s remove preview_cutting_board
tag @s remove preview_sandwich_table
tag @s remove preview_large_bowl