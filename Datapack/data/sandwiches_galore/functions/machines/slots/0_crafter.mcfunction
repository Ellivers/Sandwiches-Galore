data modify storage sandwiches:temp root.items set from block ~ ~ ~ Items

scoreboard players reset #slot_1 sg.dummy
scoreboard players reset #slot_2 sg.dummy
scoreboard players reset #slot_3 sg.dummy

scoreboard players reset #slot_10 sg.dummy
scoreboard players reset #slot_11 sg.dummy
scoreboard players reset #slot_12 sg.dummy

scoreboard players reset #slot_19 sg.dummy
scoreboard players reset #slot_20 sg.dummy
scoreboard players reset #slot_21 sg.dummy

execute store success score #slot_1 sg.dummy if data storage sandwiches:temp root.items[{Slot:1b}]
execute store success score #slot_2 sg.dummy if data storage sandwiches:temp root.items[{Slot:2b}]
execute store success score #slot_3 sg.dummy if data storage sandwiches:temp root.items[{Slot:3b}]

execute store success score #slot_10 sg.dummy if data storage sandwiches:temp root.items[{Slot:10b}]
execute store success score #slot_11 sg.dummy if data storage sandwiches:temp root.items[{Slot:11b}]
execute store success score #slot_12 sg.dummy if data storage sandwiches:temp root.items[{Slot:12b}]

execute store success score #slot_19 sg.dummy if data storage sandwiches:temp root.items[{Slot:19b}]
execute store success score #slot_20 sg.dummy if data storage sandwiches:temp root.items[{Slot:20b}]
execute store success score #slot_21 sg.dummy if data storage sandwiches:temp root.items[{Slot:21b}]

execute if score #slot_1 sg.dummy matches 1 if score #slot_2 sg.dummy matches 1 if score #slot_3 sg.dummy matches 1 if score #slot_10 sg.dummy matches 1 if score #slot_11 sg.dummy matches 1 if score #slot_12 sg.dummy matches 1 if score #slot_19 sg.dummy matches 1 if score #slot_20 sg.dummy matches 1 if score #slot_21 sg.dummy matches 1 run function sandwiches_galore:machines/reject_slots/0

execute if score #slot_1 sg.dummy matches 1 if score #slot_2 sg.dummy matches 1 if score #slot_3 sg.dummy matches 1 if score #slot_10 sg.dummy matches 1 if score #slot_11 sg.dummy matches 1 if score #slot_12 sg.dummy matches 1 if score #slot_19 sg.dummy matches 1 if score #slot_20 sg.dummy matches 1 unless score #slot_21 sg.dummy matches 1 run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 21b
execute if score #slot_1 sg.dummy matches 1 if score #slot_2 sg.dummy matches 1 if score #slot_3 sg.dummy matches 1 if score #slot_10 sg.dummy matches 1 if score #slot_11 sg.dummy matches 1 if score #slot_12 sg.dummy matches 1 if score #slot_19 sg.dummy matches 1 unless score #slot_20 sg.dummy matches 1 run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 20b
execute if score #slot_1 sg.dummy matches 1 if score #slot_2 sg.dummy matches 1 if score #slot_3 sg.dummy matches 1 if score #slot_10 sg.dummy matches 1 if score #slot_11 sg.dummy matches 1 if score #slot_12 sg.dummy matches 1 unless score #slot_19 sg.dummy matches 1 run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 19b

execute if score #slot_1 sg.dummy matches 1 if score #slot_2 sg.dummy matches 1 if score #slot_3 sg.dummy matches 1 if score #slot_10 sg.dummy matches 1 if score #slot_11 sg.dummy matches 1 unless score #slot_12 sg.dummy matches 1 run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 12b
execute if score #slot_1 sg.dummy matches 1 if score #slot_2 sg.dummy matches 1 if score #slot_3 sg.dummy matches 1 if score #slot_10 sg.dummy matches 1 unless score #slot_11 sg.dummy matches 1 run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 11b
execute if score #slot_1 sg.dummy matches 1 if score #slot_2 sg.dummy matches 1 if score #slot_3 sg.dummy matches 1 unless score #slot_10 sg.dummy matches 1 run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 10b

execute if score #slot_1 sg.dummy matches 1 if score #slot_2 sg.dummy matches 1 unless score #slot_3 sg.dummy matches 1 run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 3b
execute if score #slot_1 sg.dummy matches 1 unless score #slot_2 sg.dummy matches 1 run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 2b
execute unless score #slot_1 sg.dummy matches 1 run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 1b
