execute align xyz run summon armor_stand ~.5 ~ ~.5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["sandwiches_galore","crafter","machines"],ArmorItems:[{},{},{},{id:"minecraft:netherite_hoe",Count:1b,tag:{CustomModelData:6710037}}]}
playsound minecraft:block.wood.place block @a ~ ~ ~ 1 .8
setblock ~ ~ ~ minecraft:barrel{CustomName:'{"font":"sandwiches_galore:gui","translate":"sandwiches_galore.interface.crafter","color":"white"}'}

kill @s