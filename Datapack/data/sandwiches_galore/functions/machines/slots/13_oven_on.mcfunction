clear @a #sandwiches_galore:all{SG:{GUI_Item:1b}}
kill @e[type=minecraft:item,nbt={Item:{tag:{SG:{GUI_Item:1b}}}}]
execute if data storage sandwiches:galore Items[{Slot:13b}] run function sandwiches_galore:machines/reject_slots/13_oven
execute unless data storage sandwiches:galore Items[{Slot:13b}] run loot replace block ~ ~ ~ container.13 loot sandwiches_galore:technical/gui_arrow