clear @a #sandwiches_galore:all{SG:{GUI_Item:1b}}
kill @e[type=minecraft:item,nbt={Item:{tag:{SG:{GUI_Item:1b}}}}]
execute unless data storage sandwiches:temp root.items[{Slot:13b,id:"minecraft:white_stained_glass_pane",tag:{SG:{GUI_Item:1b}}}] run function sandwiches_galore:machines/reject_slots/13
item replace block ~ ~ ~ container.13 with minecraft:air