data modify storage sandwiches:galore Items set from block ~ ~ ~ Items

scoreboard players set #temp2 sandwiches 1
execute unless data storage sandwiches:galore Items[{Slot:10b}] run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 10b
execute if data storage sandwiches:galore Items[{Slot:10b}] run function sandwiches_galore:machines/slots/0_sandwich_table/item1_1

execute if score #temp2 sandwiches matches 0 unless data storage sandwiches:galore Items[{Slot:13b}] run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 13b
execute if score #temp2 sandwiches matches 0 if data storage sandwiches:galore Items[{Slot:13b}] run function sandwiches_galore:machines/slots/0_sandwich_table/item2_1
