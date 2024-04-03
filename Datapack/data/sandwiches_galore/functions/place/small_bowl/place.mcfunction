execute at @s align xz run summon minecraft:item_display ~.5 ~ ~.5 {item:{id:"minecraft:netherite_hoe",Count:1b,tag:{CustomModelData:6710012}},Tags:["sandwiches_galore"],Passengers:[{id:"minecraft:interaction",width:0.75f,height:0.375f,response:1b,Tags:["sandwiches_galore","sg.tick","sg.small_bowl","sg.non_solid_blocks","sg.hitbox"]}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.002f,1.002f,1.002f],translation:[0f,.5f,0f]}}
playsound minecraft:block.wood.place block @a ~ ~ ~

kill @s