execute if score @s sg.growth_state matches 4..6 run loot spawn ~ ~.5 ~ loot sandwiches_galore:blocks/corn_stage4-6
execute if score @s sg.growth_state matches ..3 run loot spawn ~ ~.5 ~ loot sandwiches_galore:items/corn_kernels
execute if score @s sg.growth_state matches 7.. run loot spawn ~ ~.5 ~ loot sandwiches_galore:blocks/corn_stage7
execute if score @s sg.growth_state matches 8.. run loot spawn ~ ~.5 ~ loot sandwiches_galore:blocks/corn_ready
execute positioned ~ ~1 ~ run kill @e[type=minecraft:armor_stand,tag=sg.corn.upper,distance=...5,sort=nearest,limit=1]

schedule function sandwiches_galore:break/anti_attack_sound 1t

execute if score @s sg.growth_state matches 4.. run particle minecraft:item minecraft:netherite_hoe{CustomModelData:6710033} ~ ~1.5 ~ .2 .3 .2 .08 28 force
execute if score @s sg.growth_state matches 4.. run playsound minecraft:block.crop.break block @a ~ ~1 ~ 1
particle minecraft:item minecraft:netherite_hoe{CustomModelData:6710033} ~ ~.5 ~ .2 .3 .2 .08 28 force
playsound minecraft:block.crop.break block @a ~ ~ ~ 1

execute positioned ~ ~.5 ~ run tp @e[type=minecraft:pig,tag=sg.hitbox,distance=...5,sort=nearest,limit=2] ~ -200 ~
kill @s