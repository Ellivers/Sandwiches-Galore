stopsound @a[distance=..10,tag=!global.ignore,tag=!global.ignore.gui] * minecraft:item.armor.equip_generic
playsound minecraft:entity.generic.extinguish_fire block @a ~ ~ ~ 0.8 2
particle minecraft:large_smoke ~ ~ ~ 0.3 0.3 0.3 0 15
data remove entity @s HandItems[0]
replaceitem entity @p[tag=!global.ignore] weapon.mainhand minecraft:glass_bottle