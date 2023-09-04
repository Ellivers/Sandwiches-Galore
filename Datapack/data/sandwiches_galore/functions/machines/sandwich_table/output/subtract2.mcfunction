execute store result storage sandwiches:galore Output.Count byte 1 run scoreboard players get #item_1 sandwiches
scoreboard players operation #temp_item_2 sandwiches = #item_2 sandwiches
scoreboard players operation #temp_item_2 sandwiches -= #item_1 sandwiches
execute store result block ~ ~ ~ Items[{Slot:13b}].Count byte 1 run scoreboard players get #temp_item_2 sandwiches
item replace block ~ ~ ~ container.10 with minecraft:air