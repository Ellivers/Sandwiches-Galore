scoreboard players operation #slot_1 sg.item_count -= #lowest sandwiches
scoreboard players operation #slot_2 sg.item_count -= #lowest sandwiches
scoreboard players operation #slot_3 sg.item_count -= #lowest sandwiches

scoreboard players operation #slot_10 sg.item_count -= #lowest sandwiches
scoreboard players operation #slot_11 sg.item_count -= #lowest sandwiches
scoreboard players operation #slot_12 sg.item_count -= #lowest sandwiches

scoreboard players operation #slot_19 sg.item_count -= #lowest sandwiches
scoreboard players operation #slot_20 sg.item_count -= #lowest sandwiches
scoreboard players operation #slot_21 sg.item_count -= #lowest sandwiches


execute if data storage sandwiches_galore:crafter Items[{Slot:1b}] store result block ~ ~ ~ Items[{Slot:1b}].Count byte 1 run scoreboard players get #slot_1 sg.item_count
execute if data storage sandwiches_galore:crafter Items[{Slot:2b}] store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players get #slot_2 sg.item_count
execute if data storage sandwiches_galore:crafter Items[{Slot:3b}] store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players get #slot_3 sg.item_count

execute if data storage sandwiches_galore:crafter Items[{Slot:10b}] store result block ~ ~ ~ Items[{Slot:10b}].Count byte 1 run scoreboard players get #slot_10 sg.item_count
execute if data storage sandwiches_galore:crafter Items[{Slot:11b}] store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players get #slot_11 sg.item_count
execute if data storage sandwiches_galore:crafter Items[{Slot:12b}] store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players get #slot_12 sg.item_count

execute if data storage sandwiches_galore:crafter Items[{Slot:19b}] store result block ~ ~ ~ Items[{Slot:19b}].Count byte 1 run scoreboard players get #slot_19 sg.item_count
execute if data storage sandwiches_galore:crafter Items[{Slot:20b}] store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run scoreboard players get #slot_20 sg.item_count
execute if data storage sandwiches_galore:crafter Items[{Slot:21b}] store result block ~ ~ ~ Items[{Slot:21b}].Count byte 1 run scoreboard players get #slot_21 sg.item_count