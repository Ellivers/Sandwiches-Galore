tag @s add sg.flour.corn
tag @s add sg.has_flour
summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["sandwiches_galore","sg.bowl_contents","sg.no_fire","sg.bowl_contents.corn_flour"],ArmorItems:[{},{},{},{id:"minecraft:netherite_hoe",Count:1b,tag:{CustomModelData:6710038}}]}
stopsound @a[distance=..16] * minecraft:item.armor.equip_generic
playsound minecraft:block.sand.place block @a ~ ~ ~
replaceitem entity @s weapon.mainhand air