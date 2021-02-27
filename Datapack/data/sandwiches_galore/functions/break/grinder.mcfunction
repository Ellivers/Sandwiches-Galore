particle minecraft:item minecraft:item_frame{CustomModelData:6710003} ~ ~ ~ .2 .3 .2 .08 20 force
stopsound @a[distance=..16] block minecraft:block.wood.break
playsound minecraft:block.lodestone.break block @a ~ ~ ~ 1 0.5

kill @e[type=minecraft:item,distance=..1,nbt={Item:{tag:{SG:{GUI_Item:1b}}}}]
execute store success score #temp sandwiches run kill @e[type=minecraft:item,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:barrel"}}]

execute if score #temp sandwiches matches 1 run loot spawn ~ ~ ~ loot sandwiches_galore:items/grinder

kill @s