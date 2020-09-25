execute align xyz run summon armor_stand ~.5 ~ ~.5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["sandwiches_galore","grinder","machines"],ArmorItems:[{},{},{},{id:"minecraft:netherite_hoe",Count:1b,tag:{CustomModelData:6710011}}]}
playsound minecraft:block.lodestone.place block @a ~ ~ ~ 1 0.5
setblock ~ ~ ~ minecraft:barrel{CustomName:'{"font":"sandwiches_galore:gui","translate":"sandwiches_galore.interface.grinder","color":"white"}'}

kill @s