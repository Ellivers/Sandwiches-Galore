scoreboard players operation #slot_1 sandwiches -= #lowest sandwiches
scoreboard players operation #slot_2 sandwiches -= #lowest sandwiches
scoreboard players operation #slot_3 sandwiches -= #lowest sandwiches

scoreboard players operation #slot_10 sandwiches -= #lowest sandwiches
scoreboard players operation #slot_11 sandwiches -= #lowest sandwiches
scoreboard players operation #slot_12 sandwiches -= #lowest sandwiches

scoreboard players operation #slot_19 sandwiches -= #lowest sandwiches
scoreboard players operation #slot_20 sandwiches -= #lowest sandwiches
scoreboard players operation #slot_21 sandwiches -= #lowest sandwiches


execute if data storage sandwiches:galore Items[{Slot:1b}] store result block ~ ~ ~ Items[{Slot:1b}].Count byte 1 run scoreboard players get #slot_1 sandwiches
execute if data storage sandwiches:galore Items[{Slot:2b}] store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players get #slot_2 sandwiches
execute if data storage sandwiches:galore Items[{Slot:3b}] store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players get #slot_3 sandwiches

execute if data storage sandwiches:galore Items[{Slot:10b}] store result block ~ ~ ~ Items[{Slot:10b}].Count byte 1 run scoreboard players get #slot_10 sandwiches
execute if data storage sandwiches:galore Items[{Slot:11b}] store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players get #slot_11 sandwiches
execute if data storage sandwiches:galore Items[{Slot:12b}] store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players get #slot_12 sandwiches

execute if data storage sandwiches:galore Items[{Slot:19b}] store result block ~ ~ ~ Items[{Slot:19b}].Count byte 1 run scoreboard players get #slot_19 sandwiches
execute if data storage sandwiches:galore Items[{Slot:20b}] store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run scoreboard players get #slot_20 sandwiches
execute if data storage sandwiches:galore Items[{Slot:21b}] store result block ~ ~ ~ Items[{Slot:21b}].Count byte 1 run scoreboard players get #slot_21 sandwiches