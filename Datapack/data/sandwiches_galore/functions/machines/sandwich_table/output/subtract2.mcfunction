execute store result storage sandwiches:galore Output.Count byte 1 run scoreboard players get #item_1 sg.dummy
scoreboard players operation #temp_item_2 sg.dummy = #item_2 sg.dummy
scoreboard players operation #temp_item_2 sg.dummy -= #item_1 sg.dummy
execute store result block ~ ~ ~ Items[{Slot:13b}].Count byte 1 run scoreboard players get #temp_item_2 sg.dummy
item replace block ~ ~ ~ container.10 with minecraft:air