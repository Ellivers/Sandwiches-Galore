# Check for missing heat viewing item
execute unless data storage sandwiches:galore Items[{Slot:11b,id:"minecraft:orange_stained_glass_pane",tag:{SG:{GUI_Item:1b}}}] run function sandwiches_galore:machines/slots/11_oven_on

# Display the appropriate level
scoreboard players operation #heat_temp sandwiches = @s sg.heat
scoreboard players add #heat_temp sandwiches 6710000
execute store result block ~ ~ ~ Items[{Slot:11b,tag:{SG:{GUI_Item:1b}}}].tag.CustomModelData int 1 run scoreboard players get #heat_temp sandwiches

# Tick down the heat timer
execute unless score @s sg.heat matches ..0 run scoreboard players remove @s sg.heat_timer 1
execute if score @s sg.heat_timer matches ..0 run scoreboard players remove @s sg.heat 1

# Reset the heat timer
execute if score @s sg.heat matches 1.. if score @s sg.heat_timer matches ..0 run scoreboard players operation @s sg.heat_timer = @s sg.heat_delay
execute if score @s sg.heat matches 1.. if score #temp sandwiches matches 1 unless data storage sandwiches:galore Items[{Slot:15b,Count:64b}] run function sandwiches_galore:machines/oven/process_tick
