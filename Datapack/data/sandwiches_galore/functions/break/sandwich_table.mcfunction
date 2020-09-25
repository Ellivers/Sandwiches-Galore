loot spawn ~ ~ ~ loot sandwiches_galore:items/sandwich_table

particle minecraft:item minecraft:item_frame{CustomModelData:6710005} ~ ~1 ~ .2 .3 .2 .08 20 force

kill @e[type=minecraft:item,distance=..1,nbt={Item:{tag:{GUI_Item:1b}}}]
kill @e[type=minecraft:item,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:barrel"}}]

kill @s