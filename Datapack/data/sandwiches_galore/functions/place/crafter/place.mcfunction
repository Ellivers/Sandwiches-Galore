execute align xyz run summon armor_stand ~.5 ~.5 ~.5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["sandwiches_galore","sg.crafter","sg.machine"],ArmorItems:[{},{},{},{id:"minecraft:netherite_hoe",Count:1b,tag:{CustomModelData:6710037}}]}
playsound minecraft:block.wood.place block @a ~ ~ ~ 1 .8
setblock ~ ~ ~ minecraft:barrel{CustomName:'{"font":"sandwiches_galore:gui","translate":"sandwiches_galore.interface.crafter","color":"white"}'}
scoreboard players add #gui_id sandwiches 1
execute align xyz positioned ~.5 ~.5 ~.5 run scoreboard players operation @e[type=armor_stand,tag=sandwiches_galore,tag=sg.crafter,sort=nearest,limit=1] sg.gui_id = #gui_id sandwiches

kill @s