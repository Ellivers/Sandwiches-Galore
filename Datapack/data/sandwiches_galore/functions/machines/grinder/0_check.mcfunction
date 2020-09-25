execute unless block ~ ~ ~ minecraft:barrel run function sandwiches_galore:break/grinder
execute if data block ~.01 ~ ~ Items[{Slot:0b}] run function sandwiches_galore:machines/slots/0_grinder

execute unless score @s sg.process = @s sg.process if data block ~.01 ~ ~ Items[{Slot:13b}] run function sandwiches_galore:machines/slots/13_grinder

execute unless score @s sg.process = @s sg.process run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710011
data modify entity @s ArmorItems[1] set value {}
data modify entity @s ArmorItems[1] set from block ~ ~ ~ Items[{Slot:11b}]
execute if predicate sandwiches_galore:grinder/grindable_items unless data block ~.01 ~ ~ Items[{Slot:15b,Count:64b}] run function sandwiches_galore:machines/grinder/process_tick
execute unless predicate sandwiches_galore:grinder/grindable_items run function sandwiches_galore:machines/reset_process

execute if block ~ ~ ~ minecraft:barrel[open=true] run function sandwiches_galore:machines/grinder/tick