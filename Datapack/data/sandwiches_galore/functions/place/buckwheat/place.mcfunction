# Places a buckwheat crop

summon minecraft:item_display ~ ~ ~ {Tags:["sandwiches_galore"],item:{id:"minecraft:netherite_hoe",Count:1b,tag:{CustomModelData:6710001}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],translation:[0f,.5f,0f]},width:1f,height:1f,Passengers:[{id:"minecraft:interaction",width:1f,height:.125f,response:1b,Tags:["sandwiches_galore","sg.crop","sg.crop.buckwheat","sg.non_solid_blocks","sg.hitbox","sg.interactable","smithed.block"]}]}

scoreboard players set @e[type=minecraft:interaction,tag=sg.crop.buckwheat,sort=nearest,limit=1] sg.growth_state 0
playsound minecraft:item.crop.plant block @a ~ ~ ~ 1
advancement grant @a[advancements={sandwiches_galore:technical/place_item_frame=true}] only minecraft:husbandry/plant_seed

kill @s
