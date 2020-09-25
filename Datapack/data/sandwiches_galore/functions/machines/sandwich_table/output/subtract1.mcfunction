execute store result storage sandwiches:sandwich_table Output.Count byte 1 run scoreboard players get #item_2 sandwiches
scoreboard players operation #temp_item_1 sandwiches = #item_1 sandwiches
scoreboard players operation #temp_item_1 sandwiches -= #item_2 sandwiches
execute store result block ~ ~ ~ Items[{Slot:10b}].Count byte 1 run scoreboard players get #temp_item_1 sandwiches
data remove block ~ ~ ~ Items[{Slot:13b}]