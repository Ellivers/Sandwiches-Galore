clear @a #sandwiches_galore:all{SG:{GUI_Item:1b}}
kill @e[type=minecraft:item,nbt={Item:{tag:{SG:{GUI_Item:1b}}}}]
execute if data storage sandwiches:temp root.items[{Slot:11b}] run function sandwiches_galore:machines/reject_slots/11_oven
execute unless data storage sandwiches:temp root.items[{Slot:11b}] run loot replace block ~ ~ ~ container.11 loot sandwiches_galore:technical/gui_fire