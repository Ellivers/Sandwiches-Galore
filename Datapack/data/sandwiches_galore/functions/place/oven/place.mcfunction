execute align xyz run summon armor_stand ~.5 ~ ~.5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["sandwiches_galore","oven","machines"],ArmorItems:[{},{},{},{id:"minecraft:netherite_hoe",Count:1b,tag:{CustomModelData:6710009}}]}
playsound minecraft:block.netherite_block.place block @a ~ ~ ~ 1 0.5
setblock ~ ~ ~ minecraft:barrel{CustomName:'{"font":"sandwiches_galore:gui","translate":"sandwiches_galore.interface.oven","color":"white"}'}
execute align xyz run summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Age: -2147483648, Duration: 1, WaitTime: -2147483648, Tags: ["rot_oven"]}
execute as @e[type=minecraft:area_effect_cloud,tag=rot_oven,limit=1] run function sandwiches_galore:place/oven/rot

kill @s