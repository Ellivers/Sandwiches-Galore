tag @s remove ready
loot spawn ~ ~-.5 ~ loot sandwiches_galore:blocks/corn_ready
data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710034
execute positioned ~ ~-1 ~ run data modify entity @e[type=minecraft:armor_stand,tag=crop_corn,distance=...5,sort=nearest,limit=1] ArmorItems[3].tag.CustomModelData set value 6710033
execute positioned ~ ~-1 ~ run scoreboard players set @e[type=minecraft:armor_stand,tag=crop_corn,distance=...5,sort=nearest,limit=1] sg.growth_state 7
execute if predicate sandwiches_galore:holding_item run function sandwiches_galore:crops/corn/give_back_item
data merge entity @s {DisabledSlots:4144959,Marker:1b,HandItems:[{},{}]}
#Piggies! For hit detection. Also turning off collision for the piggies, so that they won't bump you
summon minecraft:pig ~ 255 ~ {Team:"no_collision",Silent:1b,Tags:["hitbox","sandwiches_galore","hitbox_place","corn_upper","global.ignore"],NoAI:1b,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Duration:2147483647,Amplifier:0b,ShowParticles:0b},{Id:11b,Duration:2147483647,Amplifier:127b,ShowParticles:0b}],Attributes:[{Base:30.0d,Name:"generic.max_health"}],Health:30.0f}

#TPing the piggies from their place in the sky to avoid seeing them the first tick they spawn
tp @e[type=minecraft:pig,tag=hitbox_place,limit=1] ~ ~ ~
tag @e[type=minecraft:pig,tag=hitbox_place,limit=1] remove hitbox_place