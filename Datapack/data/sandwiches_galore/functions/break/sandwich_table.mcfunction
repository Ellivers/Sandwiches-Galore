particle minecraft:item minecraft:item_frame{CustomModelData:6710005} ~ ~ ~ .2 .3 .2 .08 20 force

kill @e[type=minecraft:item,distance=..1,nbt={Item:{tag:{SG:{GUI_Item:1b}}}}]
execute store success score #temp sg.dummy run kill @e[type=minecraft:item,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:barrel"}}]

execute if score #temp sg.dummy matches 1 run loot spawn ~ ~ ~ loot sandwiches_galore:items/sandwich_table

kill @s