# Add to the timer
execute unless score @s sg.process_timer >= $ovenBakeTime sg.dummy run scoreboard players add @s sg.process_timer 1
# Add to the visual process bar
# Note: maximum visual is 22
execute if score @s sg.process_timer >= $ovenBakeTime sg.dummy run scoreboard players add @s sg.process 1
execute if score @s sg.process_timer >= $ovenBakeTime sg.dummy run scoreboard players reset @s sg.process_timer
# Bake the item
execute if score @s sg.process matches 24.. run function sandwiches_galore:machines/oven/bake_item
execute if score @s sg.process matches 24.. run scoreboard players reset @s sg.process

execute unless data storage sandwiches:temp root.items[{Slot:13b,id:"minecraft:white_stained_glass_pane",tag:{SG:{GUI_Item:1b}}}] run function sandwiches_galore:machines/slots/13_oven_on
scoreboard players operation #progress_temp sg.dummy = @s sg.process
scoreboard players add #progress_temp sg.dummy 6710000
execute if score @s sg.process matches 1..22 store result block ~ ~ ~ Items[{Slot:13b,tag:{SG:{GUI_Item:1b}}}].tag.CustomModelData int 1 run scoreboard players get #progress_temp sg.dummy