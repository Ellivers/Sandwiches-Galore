execute if score @s sg.growth_state matches 4..6 run loot spawn ~ ~.5 ~ loot sandwiches_galore:blocks/buckwheat_stage4-6
execute if score @s sg.growth_state matches ..3 run loot spawn ~ ~.5 ~ loot sandwiches_galore:items/buckwheat_seeds
execute if score @s sg.growth_state matches 7.. run loot spawn ~ ~.5 ~ loot sandwiches_galore:blocks/buckwheat_stage7

schedule function sandwiches_galore:break/anti_attack_sound 1t

particle minecraft:item minecraft:netherite_hoe{CustomModelData:6710006} ~ ~1 ~ .2 .3 .2 .08 28 force
playsound minecraft:block.crop.break block @a ~ ~ ~ 1

tp @e[type=minecraft:pig,distance=...5,sort=nearest,limit=1,tag=hitbox] ~ -200 ~
kill @s