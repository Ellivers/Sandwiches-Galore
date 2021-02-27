summon armor_stand ~ ~-.0625 ~ {DisabledSlots:4144959,NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["sandwiches_galore","sg.crop","sg.no_fire","sg.crop.corn","sg.non_solid_blocks"],ArmorItems:[{},{},{},{id:"minecraft:netherite_hoe",Count:1b,tag:{CustomModelData:6710025}}]}
scoreboard players set @e[type=minecraft:armor_stand,sort=nearest,limit=1] sg.growth_state 0
playsound minecraft:item.crop.plant block @a ~ ~ ~ 1
advancement grant @a[advancements={sandwiches_galore:technical/place_item_frame=true},gamemode=!creative,limit=1] only minecraft:husbandry/plant_seed

#Piggies! For hit detection. Also turning off collision for the piggies, so that they won't bump you
summon minecraft:pig ~ 255 ~ {Silent:1b,Tags:["sg.hitbox","sandwiches_galore","sg.hitbox_place","sg.corn","global.ignore"],NoAI:1b,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Duration:2147483647,Amplifier:0b,ShowParticles:0b},{Id:11b,Duration:2147483647,Amplifier:127b,ShowParticles:0b}],Attributes:[{Base:30.0d,Name:"generic.max_health"}],Health:30.0f}
team join no_collision @e[type=minecraft:pig,tag=sg.hitbox_place,limit=1]

#TPing the piggies from their place in the sky to avoid seeing them the first tick they spawn
tp @e[type=minecraft:pig,tag=sg.hitbox_place,limit=1] ~ ~-.0625 ~
tag @e[type=minecraft:pig,tag=sg.hitbox_place,limit=1] remove sg.hitbox_place

kill @s