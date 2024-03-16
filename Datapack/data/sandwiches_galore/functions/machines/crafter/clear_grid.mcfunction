scoreboard players operation #slot_1 sg.dummy -= #lowest sg.dummy
scoreboard players operation #slot_2 sg.dummy -= #lowest sg.dummy
scoreboard players operation #slot_3 sg.dummy -= #lowest sg.dummy

scoreboard players operation #slot_10 sg.dummy -= #lowest sg.dummy
scoreboard players operation #slot_11 sg.dummy -= #lowest sg.dummy
scoreboard players operation #slot_12 sg.dummy -= #lowest sg.dummy

scoreboard players operation #slot_19 sg.dummy -= #lowest sg.dummy
scoreboard players operation #slot_20 sg.dummy -= #lowest sg.dummy
scoreboard players operation #slot_21 sg.dummy -= #lowest sg.dummy


execute if data storage sandwiches:temp root.items[{Slot:1b}] store result block ~ ~ ~ Items[{Slot:1b}].Count byte 1 run scoreboard players get #slot_1 sg.dummy
execute if data storage sandwiches:temp root.items[{Slot:2b}] store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players get #slot_2 sg.dummy
execute if data storage sandwiches:temp root.items[{Slot:3b}] store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players get #slot_3 sg.dummy

execute if data storage sandwiches:temp root.items[{Slot:10b}] store result block ~ ~ ~ Items[{Slot:10b}].Count byte 1 run scoreboard players get #slot_10 sg.dummy
execute if data storage sandwiches:temp root.items[{Slot:11b}] store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players get #slot_11 sg.dummy
execute if data storage sandwiches:temp root.items[{Slot:12b}] store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players get #slot_12 sg.dummy

execute if data storage sandwiches:temp root.items[{Slot:19b}] store result block ~ ~ ~ Items[{Slot:19b}].Count byte 1 run scoreboard players get #slot_19 sg.dummy
execute if data storage sandwiches:temp root.items[{Slot:20b}] store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run scoreboard players get #slot_20 sg.dummy
execute if data storage sandwiches:temp root.items[{Slot:21b}] store result block ~ ~ ~ Items[{Slot:21b}].Count byte 1 run scoreboard players get #slot_21 sg.dummy