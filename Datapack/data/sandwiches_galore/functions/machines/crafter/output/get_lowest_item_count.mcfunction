scoreboard players reset #slot_1 sg.dummy
scoreboard players reset #slot_2 sg.dummy
scoreboard players reset #slot_3 sg.dummy

scoreboard players reset #slot_10 sg.dummy
scoreboard players reset #slot_11 sg.dummy
scoreboard players reset #slot_12 sg.dummy

scoreboard players reset #slot_19 sg.dummy
scoreboard players reset #slot_20 sg.dummy
scoreboard players reset #slot_21 sg.dummy

execute store result score #slot_1 sg.dummy run data get storage sandwiches:galore Items[{Slot:1b}].Count
execute store result score #slot_2 sg.dummy run data get storage sandwiches:galore Items[{Slot:2b}].Count
execute store result score #slot_3 sg.dummy run data get storage sandwiches:galore Items[{Slot:3b}].Count

execute store result score #slot_10 sg.dummy run data get storage sandwiches:galore Items[{Slot:10b}].Count
execute store result score #slot_11 sg.dummy run data get storage sandwiches:galore Items[{Slot:11b}].Count
execute store result score #slot_12 sg.dummy run data get storage sandwiches:galore Items[{Slot:12b}].Count

execute store result score #slot_19 sg.dummy run data get storage sandwiches:galore Items[{Slot:19b}].Count
execute store result score #slot_20 sg.dummy run data get storage sandwiches:galore Items[{Slot:20b}].Count
execute store result score #slot_21 sg.dummy run data get storage sandwiches:galore Items[{Slot:21b}].Count

scoreboard players set #lowest sg.dummy 2147483647
execute if data storage sandwiches:galore Items[{Slot:1b}] run scoreboard players operation #lowest sg.dummy < #slot_1 sg.dummy
execute if data storage sandwiches:galore Items[{Slot:2b}] run scoreboard players operation #lowest sg.dummy < #slot_2 sg.dummy
execute if data storage sandwiches:galore Items[{Slot:3b}] run scoreboard players operation #lowest sg.dummy < #slot_3 sg.dummy

execute if data storage sandwiches:galore Items[{Slot:10b}] run scoreboard players operation #lowest sg.dummy < #slot_10 sg.dummy
execute if data storage sandwiches:galore Items[{Slot:11b}] run scoreboard players operation #lowest sg.dummy < #slot_11 sg.dummy
execute if data storage sandwiches:galore Items[{Slot:12b}] run scoreboard players operation #lowest sg.dummy < #slot_12 sg.dummy

execute if data storage sandwiches:galore Items[{Slot:19b}] run scoreboard players operation #lowest sg.dummy < #slot_19 sg.dummy
execute if data storage sandwiches:galore Items[{Slot:20b}] run scoreboard players operation #lowest sg.dummy < #slot_20 sg.dummy
execute if data storage sandwiches:galore Items[{Slot:21b}] run scoreboard players operation #lowest sg.dummy < #slot_21 sg.dummy