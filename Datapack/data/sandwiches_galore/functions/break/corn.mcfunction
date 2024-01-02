scoreboard players set #shouldDrop sg.dummy 1
execute on attacker store success score #shouldDrop sg.dummy if entity @s[gamemode=!creative]

execute if score #shouldDrop sg.dummy matches 1 if score @s sg.growth_state matches 4..6 run loot spawn ~ ~.5 ~ loot sandwiches_galore:blocks/corn_stage4-6
execute if score #shouldDrop sg.dummy matches 1 if score @s sg.growth_state matches ..3 run loot spawn ~ ~.5 ~ loot sandwiches_galore:items/corn_kernels
execute if score #shouldDrop sg.dummy matches 1 if score @s sg.growth_state matches 7.. run loot spawn ~ ~.5 ~ loot sandwiches_galore:blocks/corn_stage7
execute if score #shouldDrop sg.dummy matches 1 if score @s sg.growth_state matches 8.. run loot spawn ~ ~.5 ~ loot sandwiches_galore:blocks/corn_ready

execute if score @s sg.growth_state matches 4.. run particle minecraft:item minecraft:netherite_hoe{CustomModelData:6710033} ~ ~1.5 ~ .2 .3 .2 .08 28 force
execute if score @s sg.growth_state matches 4.. run playsound minecraft:block.crop.break block @a ~ ~1 ~ 1
particle minecraft:item minecraft:netherite_hoe{CustomModelData:6710033} ~ ~.5 ~ .2 .3 .2 .08 28 force
playsound minecraft:block.crop.break block @a ~ ~ ~ 1

execute on vehicle on passengers run kill @s[tag=sg.upper_half]
execute on vehicle run kill @s
kill @s
