execute if score @s sg.growth_state matches 4..6 run loot spawn ~ ~.5 ~ loot sandwiches_galore:blocks/corn_stage4-6
execute if score @s sg.growth_state matches ..3 run loot spawn ~ ~.5 ~ loot sandwiches_galore:items/corn_seeds
execute if score @s sg.growth_state matches 7.. run loot spawn ~ ~.5 ~ loot sandwiches_galore:blocks/corn_stage7
execute if entity @s[tag=ready] run loot spawn ~ ~.5 ~ loot sandwiches_galore:blocks/corn_ready
execute positioned ~ ~-1 ~ run kill @e[type=minecraft:armor_stand,tag=crop_corn,distance=...5,sort=nearest,limit=1]

schedule function sandwiches_galore:break/anti_attack_sound 1t

particle minecraft:item minecraft:netherite_hoe{CustomModelData:6710033} ~ ~.5 ~ .2 .3 .2 .08 28 force
playsound minecraft:block.crop.break block @a ~ ~ ~ 1
particle minecraft:item minecraft:netherite_hoe{CustomModelData:6710033} ~ ~-.5 ~ .2 .3 .2 .08 28 force
playsound minecraft:block.crop.break block @a ~ ~-1 ~ 1

execute positioned ~ ~-.5 ~ run tp @e[type=minecraft:pig,tag=hitbox,distance=...5,sort=nearest,limit=2] ~ -200 ~
kill @s