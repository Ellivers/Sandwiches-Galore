data modify entity @s ArmorItems[2] set from block ~.01 ~ ~ Items[{Slot:0b}]
execute if data block ~.01 ~ ~ Items[{Slot:11b}] run function sandwiches_galore:machines/reject_slots/0
execute unless data block ~.01 ~ ~ Items[{Slot:11b}] run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 11b
