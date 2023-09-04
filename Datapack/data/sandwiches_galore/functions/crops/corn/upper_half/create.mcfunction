# Creates the upper part of the corn plant

tag @s add sg.has_upper_half

summon minecraft:item_display ~ ~ ~ {Tags:["sandwiches_galore","sg.non_solid_blocks","sg.upper_half","smithed.block"],item:{id:"minecraft:netherite_hoe",Count:1b,tag:{CustomModelData:6710030}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],translation:[0f,1.5f,0f]},width:1f,height:2f}

execute on vehicle run ride @e[type=minecraft:item_display,tag=sg.upper_half,sort=nearest,limit=1] mount @s
