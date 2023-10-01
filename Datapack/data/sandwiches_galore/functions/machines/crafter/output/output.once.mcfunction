function sandwiches_galore:machines/crafter/remove_1_from_all_grid_items

scoreboard players set #temp sandwiches 0
scoreboard players reset @a sandwiches
execute as @a[tag=sg.tag] store result score @s sandwiches store result score #temp sandwiches run clear @s #sandwiches_galore:all{SG:{GUI_Item:1b}}
execute if score #temp sandwiches matches 1.. run tag @a remove sg.tag
execute if score #temp sandwiches matches 1.. run tag @a[scores={sandwiches=1..}] add sg.tag

kill @e[type=minecraft:item,nbt={Item:{tag:{SG:{GUI_Item:1b}}}}]

execute if entity @s[tag=sg.preview_knife] at @a[tag=sg.tag,limit=1] run loot spawn ~ ~ ~ loot sandwiches_galore:items/bread_knife
execute if entity @s[tag=sg.preview_oven] at @a[tag=sg.tag,limit=1] run loot spawn ~ ~ ~ loot sandwiches_galore:items/oven
execute if entity @s[tag=sg.preview_corn_kernels] at @a[tag=sg.tag,limit=1] run loot spawn ~ ~ ~ loot sandwiches_galore:technical/3_corn_kernels
execute if entity @s[tag=sg.preview_whisk] at @a[tag=sg.tag,limit=1] run loot spawn ~ ~ ~ loot sandwiches_galore:items/whisk
execute if entity @s[tag=sg.preview_grinder] at @a[tag=sg.tag,limit=1] run loot spawn ~ ~ ~ loot sandwiches_galore:items/grinder
execute if entity @s[tag=sg.preview_cutting_board] at @a[tag=sg.tag,limit=1] run loot spawn ~ ~ ~ loot sandwiches_galore:items/cutting_board
execute if entity @s[tag=sg.preview_sandwich_table] at @a[tag=sg.tag,limit=1] run loot spawn ~ ~ ~ loot sandwiches_galore:items/sandwich_table
execute if entity @s[tag=sg.preview_large_bowl] at @a[tag=sg.tag,limit=1] run loot spawn ~ ~ ~ loot sandwiches_galore:items/large_bowl
execute at @a[tag=sg.tag,limit=1] run data modify entity @e[type=minecraft:item,sort=nearest,limit=1] PickupDelay set value 0s
function #sandwiches_galore:crafter/output_one

tag @a remove sg.tag
tag @s remove sg.previewing
tag @s remove sg.preview_knife
tag @s remove sg.preview_oven
tag @s remove sg.preview_corn_kernels
tag @s remove sg.preview_whisk
tag @s remove sg.preview_grinder
tag @s remove sg.preview_cutting_board
tag @s remove sg.preview_sandwich_table
tag @s remove sg.preview_large_bowl
