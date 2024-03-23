summon minecraft:item_display ~ ~1 ~ {item:{id:"minecraft:netherite_hoe",Count:1b,tag:{CustomModelData:6710037}},Tags:["sandwiches_galore","sg.crafter","sg.machine","sg.second_clock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.002f,1.002f,1.002f],translation:[.00005f,-.49995f,.00005f]}}
setblock ~ ~ ~ minecraft:barrel{CustomName:'{"font":"sandwiches_galore:gui","translate":"sandwiches_galore.interface.crafter","color":"white","with":[{"translate":"sandwiches_galore.interface.crafter.name","color":"#3F3F3F","font":"minecraft:default"}]}'}

scoreboard players add #gui_id sg.dummy 1
execute positioned ~ ~1 ~ run scoreboard players operation @e[type=minecraft:item_display,tag=sandwiches_galore,tag=sg.crafter,sort=nearest,limit=1] sg.gui_id = #gui_id sg.dummy

playsound minecraft:block.wood.place block @a[distance=..16] ~ ~ ~ 1 .8
kill @s
