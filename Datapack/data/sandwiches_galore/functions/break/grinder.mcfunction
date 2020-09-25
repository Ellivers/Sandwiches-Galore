loot spawn ~ ~ ~ loot sandwiches_galore:items/grinder

particle minecraft:item minecraft:item_frame{CustomModelData:6710003} ~ ~1 ~ .2 .3 .2 .08 20 force
stopsound @a[distance=..10,tag=!global.ignore,tag=!global.ignore.gui] block minecraft:block.wood.break
playsound minecraft:block.lodestone.break block @a ~ ~ ~ 1 0.5

kill @e[type=minecraft:item,distance=..1,nbt={Item:{tag:{GUI_Item:1b}}}]
kill @e[type=minecraft:item,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:barrel"}}]

kill @s