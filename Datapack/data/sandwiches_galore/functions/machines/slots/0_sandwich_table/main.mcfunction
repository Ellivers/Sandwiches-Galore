data modify storage sandwiches:temp root.items set from block ~ ~ ~ Items

scoreboard players set #temp2 sg.dummy 1
execute unless data storage sandwiches:temp root.items[{Slot:10b}] run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 10b
execute if data storage sandwiches:temp root.items[{Slot:10b}] run function sandwiches_galore:machines/slots/0_sandwich_table/item1_1

execute if score #temp2 sg.dummy matches 0 unless data storage sandwiches:temp root.items[{Slot:13b}] run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 13b
execute if score #temp2 sg.dummy matches 0 if data storage sandwiches:temp root.items[{Slot:13b}] run function sandwiches_galore:machines/slots/0_sandwich_table/item2_1
