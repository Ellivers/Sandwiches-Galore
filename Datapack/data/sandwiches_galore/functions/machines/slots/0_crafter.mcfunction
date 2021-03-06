data modify storage sandwiches:galore Items set from block ~ ~ ~ Items

scoreboard players reset #slot_1 sandwiches
scoreboard players reset #slot_2 sandwiches
scoreboard players reset #slot_3 sandwiches

scoreboard players reset #slot_10 sandwiches
scoreboard players reset #slot_11 sandwiches
scoreboard players reset #slot_12 sandwiches

scoreboard players reset #slot_19 sandwiches
scoreboard players reset #slot_20 sandwiches
scoreboard players reset #slot_21 sandwiches

execute store success score #slot_1 sandwiches if data storage sandwiches:galore Items[{Slot:1b}]
execute store success score #slot_2 sandwiches if data storage sandwiches:galore Items[{Slot:2b}]
execute store success score #slot_3 sandwiches if data storage sandwiches:galore Items[{Slot:3b}]

execute store success score #slot_10 sandwiches if data storage sandwiches:galore Items[{Slot:10b}]
execute store success score #slot_11 sandwiches if data storage sandwiches:galore Items[{Slot:11b}]
execute store success score #slot_12 sandwiches if data storage sandwiches:galore Items[{Slot:12b}]

execute store success score #slot_19 sandwiches if data storage sandwiches:galore Items[{Slot:19b}]
execute store success score #slot_20 sandwiches if data storage sandwiches:galore Items[{Slot:20b}]
execute store success score #slot_21 sandwiches if data storage sandwiches:galore Items[{Slot:21b}]

execute if score #slot_1 sandwiches matches 1 if score #slot_2 sandwiches matches 1 if score #slot_3 sandwiches matches 1 if score #slot_10 sandwiches matches 1 if score #slot_11 sandwiches matches 1 if score #slot_12 sandwiches matches 1 if score #slot_19 sandwiches matches 1 if score #slot_20 sandwiches matches 1 if score #slot_21 sandwiches matches 1 run function sandwiches_galore:machines/reject_slots/0

execute if score #slot_1 sandwiches matches 1 if score #slot_2 sandwiches matches 1 if score #slot_3 sandwiches matches 1 if score #slot_10 sandwiches matches 1 if score #slot_11 sandwiches matches 1 if score #slot_12 sandwiches matches 1 if score #slot_19 sandwiches matches 1 if score #slot_20 sandwiches matches 1 unless score #slot_21 sandwiches matches 1 run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 21b
execute if score #slot_1 sandwiches matches 1 if score #slot_2 sandwiches matches 1 if score #slot_3 sandwiches matches 1 if score #slot_10 sandwiches matches 1 if score #slot_11 sandwiches matches 1 if score #slot_12 sandwiches matches 1 if score #slot_19 sandwiches matches 1 unless score #slot_20 sandwiches matches 1 run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 20b
execute if score #slot_1 sandwiches matches 1 if score #slot_2 sandwiches matches 1 if score #slot_3 sandwiches matches 1 if score #slot_10 sandwiches matches 1 if score #slot_11 sandwiches matches 1 if score #slot_12 sandwiches matches 1 unless score #slot_19 sandwiches matches 1 run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 19b

execute if score #slot_1 sandwiches matches 1 if score #slot_2 sandwiches matches 1 if score #slot_3 sandwiches matches 1 if score #slot_10 sandwiches matches 1 if score #slot_11 sandwiches matches 1 unless score #slot_12 sandwiches matches 1 run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 12b
execute if score #slot_1 sandwiches matches 1 if score #slot_2 sandwiches matches 1 if score #slot_3 sandwiches matches 1 if score #slot_10 sandwiches matches 1 unless score #slot_11 sandwiches matches 1 run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 11b
execute if score #slot_1 sandwiches matches 1 if score #slot_2 sandwiches matches 1 if score #slot_3 sandwiches matches 1 unless score #slot_10 sandwiches matches 1 run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 10b

execute if score #slot_1 sandwiches matches 1 if score #slot_2 sandwiches matches 1 unless score #slot_3 sandwiches matches 1 run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 3b
execute if score #slot_1 sandwiches matches 1 unless score #slot_2 sandwiches matches 1 run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 2b
execute unless score #slot_1 sandwiches matches 1 run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 1b
