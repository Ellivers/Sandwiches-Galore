tag @s add water
summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["sandwiches_galore","bowl_contents","sg.no_fire","water"],ArmorItems:[{},{},{},{id:"minecraft:netherite_hoe",Count:1b,tag:{CustomModelData:6710013}}]}
stopsound @a[distance=..10,tag=!global.ignore,tag=!global.ignore.gui] * minecraft:item.armor.equip_generic
playsound minecraft:item.bottle.empty block @a ~ ~ ~
data remove entity @s HandItems[0]
replaceitem entity @p[tag=!global.ignore] weapon.mainhand minecraft:glass_bottle