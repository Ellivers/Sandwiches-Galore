tag @s add sg.flour.wheat
tag @s add sg.has_flour
execute as @e[type=minecraft:armor_stand,tag=sg.bowl_contents.wheat_flour,tag=sg.bowl_contents,distance=...5,sort=nearest,limit=1] at @s run tp ~ ~.05 ~
execute unless score @s sg.flour_level matches 1.. run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["sandwiches_galore","sg.bowl_contents","sg.no_fire","sg.bowl_contents.wheat_flour"],ArmorItems:[{},{},{},{id:"minecraft:netherite_hoe",Count:1b,tag:{CustomModelData:6710022}}]}
scoreboard players add @s sg.flour_level 1
stopsound @a[distance=..16] * minecraft:item.armor.equip_generic
playsound minecraft:block.sand.place block @a ~ ~ ~
replaceitem entity @s weapon.mainhand air