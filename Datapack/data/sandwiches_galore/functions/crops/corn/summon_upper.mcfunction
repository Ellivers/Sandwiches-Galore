tag @s add sg.has_upper_part
summon armor_stand ~ ~ ~ {DisabledSlots:4144959,ShowArms:1b,NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["sandwiches_galore","sg.no_fire","sg.corn.upper","sg.crop","sg.non_solid_blocks"],ArmorItems:[{},{},{},{id:"minecraft:netherite_hoe",Count:1b,tag:{CustomModelData:6710030}}]}

#Piggies! For hit detection. Also turning off collision for the piggies, so that they won't bump you
summon minecraft:pig ~ 255 ~ {Silent:1b,Tags:["sg.hitbox","sandwiches_galore","sg.hitbox_place","sg.hitbox.corn_upper","global.ignore"],NoAI:1b,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Duration:2147483647,Amplifier:0b,ShowParticles:0b},{Id:11b,Duration:2147483647,Amplifier:127b,ShowParticles:0b}],Attributes:[{Base:30.0d,Name:"generic.max_health"}],Health:30.0f}
team join no_collision @e[type=minecraft:pig,tag=sg.hitbox_place,limit=1]

#TPing the piggies from their place in the sky to avoid seeing them the first tick they spawn
tp @e[type=minecraft:pig,tag=sg.hitbox_place,limit=1] ~ ~ ~
tag @e[type=minecraft:pig,tag=sg.hitbox_place,limit=1] remove sg.hitbox_place

scoreboard players operation @e[type=minecraft:armor_stand,tag=sg.corn.upper,distance=...5,sort=nearest,limit=1] sg.growth_state = @s sg.growth_state

execute as @e[type=minecraft:armor_stand,tag=sg.corn.upper,sort=nearest,limit=1] run function sandwiches_galore:crops/corn/grow_upper