tag @s add corn_flour
tag @s add flour
summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["sandwiches_galore","bowl_contents","sg.no_fire","corn_flour"],ArmorItems:[{},{},{},{id:"minecraft:netherite_hoe",Count:1b,tag:{CustomModelData:6710038}}]}
stopsound @a[distance=..10,tag=!global.ignore,tag=!global.ignore.gui] * minecraft:item.armor.equip_generic
playsound minecraft:block.sand.place block @a ~ ~ ~
data remove entity @s HandItems[0]