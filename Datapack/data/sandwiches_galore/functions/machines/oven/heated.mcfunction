execute unless data block ~.01 ~ ~ Items[{Slot:11b,id:"minecraft:orange_stained_glass_pane",tag:{GUI_Item:1b}}] run function sandwiches_galore:machines/slots/11_oven_on
scoreboard players operation @s sg.heat_temp = @s sg.heat
scoreboard players add @s sg.heat_temp 6710000
execute store result block ~ ~ ~ Items[{Slot:11b,tag:{GUI_Item:1b}}].tag.CustomModelData int 1 run scoreboard players get @s sg.heat_temp

execute unless score @s sg.heat matches ..0 run scoreboard players remove @s sg.heat_timer 1
execute if score @s sg.heat_timer matches ..0 run scoreboard players remove @s sg.heat 1
execute if score @s sg.heat matches 1.. if score @s sg.heat_timer matches ..0 run scoreboard players operation @s sg.heat_timer = @s sg.heat_delay
execute if score @s sg.heat matches 1.. if predicate sandwiches_galore:gui/bakeable_items2 unless data block ~.01 ~ ~ Items[{Slot:15b,Count:64b}] run function sandwiches_galore:machines/oven/process_tick
data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710010