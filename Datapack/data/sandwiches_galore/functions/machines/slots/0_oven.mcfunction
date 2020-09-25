data modify entity @s ArmorItems[2] set from block ~.01 ~ ~ Items[{Slot:0b}]
execute unless predicate sandwiches_galore:gui/fuel_items if data block ~.01 ~ ~ Items[{Slot:2b}] run function sandwiches_galore:machines/reject_slots/0
execute if predicate sandwiches_galore:gui/fuel_items if data block ~.01 ~ ~ Items[{Slot:20b}] if data block ~.01 ~ ~ Items[{Slot:2b}] run function sandwiches_galore:machines/reject_slots/0

execute if predicate sandwiches_galore:gui/fuel_items if data block ~.01 ~ ~ Items[{Slot:20b}] unless data block ~.01 ~ ~ Items[{Slot:2b}] run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 2b
execute if predicate sandwiches_galore:gui/fuel_items unless data block ~.01 ~ ~ Items[{Slot:20b}] run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 20b
execute unless predicate sandwiches_galore:gui/fuel_items unless data block ~.01 ~ ~ Items[{Slot:2b}] run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 2b
