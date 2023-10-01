summon minecraft:item_display ~ ~ ~ {width:1f,height:1f,item:{id:"minecraft:netherite_hoe",Count:1b,tag:{CustomModelData:6710011}},Tags:["sandwiches_galore","sg.grinder","sg.machine","sg.auto_light"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.1f,1.1f,1.1f],translation:[-.05f,-.05f,-.05f]}}
setblock ~ ~ ~ minecraft:barrel{CustomName:'{"font":"sandwiches_galore:gui","translate":"sandwiches_galore.interface.grinder","color":"white","with":[{"translate":"sandwiches_galore.interface.grinder.name","color":"#3F3F3F","font":"minecraft:default"}]}'}

scoreboard players add #gui_id sandwiches 1
scoreboard players operation @e[type=minecraft:item_display,tag=sandwiches_galore,tag=sg.crafter,sort=nearest,limit=1] sg.gui_id = #gui_id sandwiches

playsound minecraft:block.lodestone.place block @a ~ ~ ~ 1 .5
kill @s
