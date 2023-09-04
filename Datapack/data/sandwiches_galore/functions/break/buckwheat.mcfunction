scoreboard players set #shouldDrop sandwiches 1
execute on attacker store success score #shouldDrop sandwiches if entity @s[gamemode=!creative]

execute if score #shouldDrop sandwiches matches 1 if score @s sg.growth_state matches 4..6 run loot spawn ~ ~.2 ~ loot sandwiches_galore:blocks/buckwheat_stage4-6
execute if score #shouldDrop sandwiches matches 1 if score @s sg.growth_state matches ..3 run loot spawn ~ ~.2 ~ loot sandwiches_galore:items/buckwheat_seeds
execute if score #shouldDrop sandwiches matches 1 if score @s sg.growth_state matches 7.. run loot spawn ~ ~.2 ~ loot sandwiches_galore:blocks/buckwheat_stage7

particle minecraft:item minecraft:netherite_hoe{CustomModelData:6710006} ~ ~.5 ~ .2 .3 .2 .08 28 force
playsound minecraft:block.crop.break block @a ~ ~ ~ 1

execute on vehicle run kill @s
kill @s
