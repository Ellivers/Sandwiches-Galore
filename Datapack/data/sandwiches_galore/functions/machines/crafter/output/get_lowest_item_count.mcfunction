scoreboard players reset #slot_1 sandwiches
scoreboard players reset #slot_2 sandwiches
scoreboard players reset #slot_3 sandwiches

scoreboard players reset #slot_10 sandwiches
scoreboard players reset #slot_11 sandwiches
scoreboard players reset #slot_12 sandwiches

scoreboard players reset #slot_19 sandwiches
scoreboard players reset #slot_20 sandwiches
scoreboard players reset #slot_21 sandwiches

execute store result score #slot_1 sandwiches run data get storage sandwiches:galore Items[{Slot:1b}].Count
execute store result score #slot_2 sandwiches run data get storage sandwiches:galore Items[{Slot:2b}].Count
execute store result score #slot_3 sandwiches run data get storage sandwiches:galore Items[{Slot:3b}].Count

execute store result score #slot_10 sandwiches run data get storage sandwiches:galore Items[{Slot:10b}].Count
execute store result score #slot_11 sandwiches run data get storage sandwiches:galore Items[{Slot:11b}].Count
execute store result score #slot_12 sandwiches run data get storage sandwiches:galore Items[{Slot:12b}].Count

execute store result score #slot_19 sandwiches run data get storage sandwiches:galore Items[{Slot:19b}].Count
execute store result score #slot_20 sandwiches run data get storage sandwiches:galore Items[{Slot:20b}].Count
execute store result score #slot_21 sandwiches run data get storage sandwiches:galore Items[{Slot:21b}].Count

scoreboard players set #lowest sandwiches 2147483647
execute if data storage sandwiches:galore Items[{Slot:1b}] run scoreboard players operation #lowest sandwiches < #slot_1 sandwiches
execute if data storage sandwiches:galore Items[{Slot:2b}] run scoreboard players operation #lowest sandwiches < #slot_2 sandwiches
execute if data storage sandwiches:galore Items[{Slot:3b}] run scoreboard players operation #lowest sandwiches < #slot_3 sandwiches

execute if data storage sandwiches:galore Items[{Slot:10b}] run scoreboard players operation #lowest sandwiches < #slot_10 sandwiches
execute if data storage sandwiches:galore Items[{Slot:11b}] run scoreboard players operation #lowest sandwiches < #slot_11 sandwiches
execute if data storage sandwiches:galore Items[{Slot:12b}] run scoreboard players operation #lowest sandwiches < #slot_12 sandwiches

execute if data storage sandwiches:galore Items[{Slot:19b}] run scoreboard players operation #lowest sandwiches < #slot_19 sandwiches
execute if data storage sandwiches:galore Items[{Slot:20b}] run scoreboard players operation #lowest sandwiches < #slot_20 sandwiches
execute if data storage sandwiches:galore Items[{Slot:21b}] run scoreboard players operation #lowest sandwiches < #slot_21 sandwiches