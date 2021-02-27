clear @a #sandwiches_galore:all{SG:{GUI_Item:1b}}
kill @e[type=minecraft:item,sort=arbitrary,nbt={Item:{tag:{SG:{GUI_Item:1b}}}}]
execute unless data storage sandwiches:galore Items[{Slot:13b,id:"minecraft:white_stained_glass_pane",tag:{SG:{GUI_Item:1b}}}] run function sandwiches_galore:machines/reject_slots/13
replaceitem block ~ ~ ~ container.13 air