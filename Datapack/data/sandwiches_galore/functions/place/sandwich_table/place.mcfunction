execute align xyz run summon armor_stand ~.5 ~.5 ~.5 {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["sandwiches_galore","sg.sandwich_table","sg.machine"],ArmorItems:[{},{},{},{id:"minecraft:netherite_hoe",Count:1b,tag:{CustomModelData:6710018}}]}
#Make custom sound?
playsound minecraft:block.wood.place block @a ~ ~ ~ 1 0.6
setblock ~ ~ ~ minecraft:barrel{CustomName:'{"font":"sandwiches_galore:gui","translate":"sandwiches_galore.interface.sandwich_table","color":"white"}'}
execute align xyz positioned ~.5 ~.5 ~.5 run scoreboard players operation @e[type=armor_stand,tag=sandwiches_galore,tag=sg.sandwich_table,sort=nearest,limit=1] sg.gui_id = #gui_id sandwiches

kill @s