execute align xyz run summon armor_stand ~.5 ~.5 ~.5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["sandwiches_galore","sg.oven","sg.machine"],ArmorItems:[{},{},{},{id:"minecraft:netherite_hoe",Count:1b,tag:{CustomModelData:6710009}}]}
playsound minecraft:block.netherite_block.place block @a ~ ~ ~ 1 0.5
setblock ~ ~ ~ minecraft:barrel{CustomName:'{"font":"sandwiches_galore:gui","translate":"sandwiches_galore.interface.oven","color":"white","with":[{"translate":"sandwiches_galore.interface.oven.name","color":"#3F3F3F","font":"minecraft:default"}]}'}
execute align xyz run summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Age: -2147483648, Duration: 1, WaitTime: -2147483648, Tags: ["sg.rot_oven"]}
execute as @e[type=minecraft:area_effect_cloud,tag=sg.rot_oven,limit=1] at @s run function sandwiches_galore:place/oven/rot
execute align xyz positioned ~.5 ~.5 ~.5 run scoreboard players operation @e[type=armor_stand,tag=sandwiches_galore,tag=sg.oven,sort=nearest,limit=1] sg.gui_id = #gui_id sandwiches

kill @s