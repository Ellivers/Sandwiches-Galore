execute unless score @s sg.process_timer >= $ovenBakeTime sandwiches run scoreboard players add @s sg.process_timer 1
# Note: maximum visual is 22
execute if score @s sg.process_timer >= $ovenBakeTime sandwiches run scoreboard players add @s sg.process 1
execute if score @s sg.process matches 24.. run function sandwiches_galore:machines/oven/bake_item
execute if score @s sg.process matches 24.. run scoreboard players reset @s sg.process
execute if score @s sg.process_timer >= $ovenBakeTime sandwiches run scoreboard players reset @s sg.process_timer

execute unless data block ~.01 ~ ~ Items[{Slot:13b,id:"minecraft:white_stained_glass_pane",tag:{GUI_Item:1b}}] run function sandwiches_galore:machines/slots/13_oven_on
scoreboard players operation @s sg.process_temp = @s sg.process
scoreboard players add @s sg.process_temp 6710000
execute if score @s sg.process matches 1..22 store result block ~ ~ ~ Items[{Slot:13b,tag:{GUI_Item:1b}}].tag.CustomModelData int 1 run scoreboard players get @s sg.process_temp