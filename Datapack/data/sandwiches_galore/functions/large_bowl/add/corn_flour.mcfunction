tag @s add corn_flour
tag @s add flour
execute as @e[type=minecraft:armor_stand,tag=corn_flour,tag=bowl_contents,distance=...5,sort=nearest,limit=1] at @s run tp ~ ~.05 ~
execute unless score @s sg.flour_level matches 1.. run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["sandwiches_galore","bowl_contents","sg.no_fire","corn_flour"],ArmorItems:[{},{},{},{id:"minecraft:netherite_hoe",Count:1b,tag:{CustomModelData:6710039}}]}
scoreboard players add @s sg.flour_level 1
stopsound @a[distance=..10,tag=!global.ignore,tag=!global.ignore.gui] * minecraft:item.armor.equip_generic
playsound minecraft:block.sand.place block @a ~ ~ ~
data remove entity @s HandItems[0]