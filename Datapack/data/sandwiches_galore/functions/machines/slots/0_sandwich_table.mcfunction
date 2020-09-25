data modify entity @s ArmorItems[2] set from block ~.01 ~ ~ Items[{Slot:0b}]
execute if data block ~.01 ~ ~ Items[{Slot:10b}] if data block ~.01 ~ ~ Items[{Slot:13b}] run function sandwiches_galore:machines/reject_slots/0
execute if data block ~.01 ~ ~ Items[{Slot:10b}] unless data block ~.01 ~ ~ Items[{Slot:13b}] run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 13b
execute unless data block ~.01 ~ ~ Items[{Slot:10b}] run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 10b
