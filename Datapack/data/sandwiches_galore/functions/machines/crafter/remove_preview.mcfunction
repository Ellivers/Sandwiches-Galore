tag @s remove sg.previewing
tag @s remove sg.preview_knife
tag @s remove sg.preview_oven
tag @s remove sg.preview_corn_kernels
tag @s remove sg.preview_whisk
tag @s remove sg.preview_grinder
tag @s remove sg.preview_cutting_board
tag @s remove sg.preview_sandwich_table
tag @s remove sg.preview_large_bowl
function #sandwiches_galore:crafter/remove_preview
replaceitem block ~ ~ ~ container.15 minecraft:air
