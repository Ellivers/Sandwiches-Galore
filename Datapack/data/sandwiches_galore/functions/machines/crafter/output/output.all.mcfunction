function sandwiches_galore:machines/crafter/output/get_lowest_item_count
function sandwiches_galore:machines/crafter/clear_grid

tag @a[tag=sg.tag,nbt={Inventory:[{tag:{SG:{GUI_Item:1b}}}]},limit=1] add sg.tag2
clear @a[tag=sg.tag] #sandwiches_galore:all{SG:{GUI_Item:1b}}

execute if entity @s[tag=sg.preview_knife] at @a[tag=sg.tag2,limit=1] run function sandwiches_galore:machines/crafter/output/items/knife
execute if entity @s[tag=sg.preview_oven] at @a[tag=sg.tag2,limit=1] run function sandwiches_galore:machines/crafter/output/items/oven
execute if entity @s[tag=sg.preview_corn_kernels] at @a[tag=sg.tag2,limit=1] run function sandwiches_galore:machines/crafter/output/items/corn_kernels
execute if entity @s[tag=sg.preview_whisk] at @a[tag=sg.tag2,limit=1] run function sandwiches_galore:machines/crafter/output/items/whisk
execute if entity @s[tag=sg.preview_grinder] at @a[tag=sg.tag2,limit=1] run function sandwiches_galore:machines/crafter/output/items/grinder
execute if entity @s[tag=sg.preview_cutting_board] at @a[tag=sg.tag2,limit=1] run function sandwiches_galore:machines/crafter/output/items/cutting_board
execute if entity @s[tag=sg.preview_sandwich_table] at @a[tag=sg.tag2,limit=1] run function sandwiches_galore:machines/crafter/output/items/sandwich_table
execute if entity @s[tag=sg.preview_large_bowl] at @a[tag=sg.tag2,limit=1] run function sandwiches_galore:machines/crafter/output/items/large_bowl
function #sandwiches_galore:crafter/output_all

tag @a remove sg.tag
tag @a remove sg.tag2
tag @s remove sg.previewing
tag @s remove sg.preview_knife
tag @s remove sg.preview_oven
tag @s remove sg.preview_corn_kernels
tag @s remove sg.preview_whisk
tag @s remove sg.preview_grinder
tag @s remove sg.preview_cutting_board
tag @s remove sg.preview_sandwich_table
tag @s remove sg.preview_large_bowl
