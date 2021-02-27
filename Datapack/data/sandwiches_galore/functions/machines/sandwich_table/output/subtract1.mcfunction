execute store result storage sandwiches:galore Output.Count byte 1 run scoreboard players get #item_2 sandwiches
scoreboard players operation #temp_item_1 sandwiches = #item_1 sandwiches
scoreboard players operation #temp_item_1 sandwiches -= #item_2 sandwiches
execute store result block ~ ~ ~ Items[{Slot:10b}].Count byte 1 run scoreboard players get #temp_item_1 sandwiches
replaceitem block ~ ~ ~ container.13 air