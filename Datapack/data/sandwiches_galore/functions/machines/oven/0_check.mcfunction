execute unless block ~ ~ ~ minecraft:barrel run function sandwiches_galore:break/oven
execute if data block ~.01 ~ ~ Items[{Slot:0b}] run function sandwiches_galore:machines/slots/0_oven

execute unless score @s sg.heat = @s sg.heat run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710009
execute if score @s sg.heat matches ..0 run scoreboard players reset @s sg.heat
execute unless predicate sandwiches_galore:gui/bakeable_items2 run function sandwiches_galore:machines/reset_process
execute unless score @s sg.heat = @s sg.heat run function sandwiches_galore:machines/reset_process
execute if score @s sg.heat matches ..2147483647 run function sandwiches_galore:machines/oven/heated

execute if data block ~.01 ~ ~ Items[{Slot:2b}] run function sandwiches_galore:machines/slots/2_oven
execute if block ~ ~ ~ minecraft:barrel[open=true] run function sandwiches_galore:machines/oven/tick