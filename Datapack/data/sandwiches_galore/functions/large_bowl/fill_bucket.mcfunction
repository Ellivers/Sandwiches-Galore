data remove entity @s HandItems[0]
give @p[tag=!global.ignore] minecraft:water_bucket
stopsound @a[distance=..10,tag=!global.ignore,tag=!global.ignore.gui] * minecraft:entity.item.pickup
playsound minecraft:item.bucket.fill block @a ~ ~ ~
kill @e[type=minecraft:armor_stand,tag=bowl_contents,tag=water,sort=nearest,limit=1]
tag @s remove water