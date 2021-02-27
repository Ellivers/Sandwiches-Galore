execute if score @s sg.growth_state matches 7 if predicate sandwiches_galore:chance/corn_ready_chance run function sandwiches_galore:crops/corn/ready

execute if score @s sg.growth_state matches 3..6 if block ~ ~1.1 ~ #sandwiches_galore:grow_through run scoreboard players add @s sg.growth_state 1
execute unless score @s sg.growth_state matches 3.. run scoreboard players add @s sg.growth_state 1
execute positioned ~ ~1 ~ run scoreboard players operation @e[type=minecraft:armor_stand,tag=sg.corn.upper,distance=...5,sort=nearest,limit=1] sg.growth_state = @s sg.growth_state

execute if score @s sg.growth_state matches ..1 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710026
execute if score @s sg.growth_state matches 2 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710027
execute if score @s sg.growth_state matches 3 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710028
execute if score @s sg.growth_state matches 4 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710029
execute if score @s sg.growth_state matches 7 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710033
execute if score @s sg.growth_state matches 4..7 if entity @s[tag=sg.has_upper_part] positioned ~ ~1 ~ as @e[type=minecraft:armor_stand,tag=sg.corn.upper,distance=...5,sort=nearest,limit=1] run function sandwiches_galore:crops/corn/grow_upper
execute if score @s sg.growth_state matches 4..7 unless entity @s[tag=sg.has_upper_part] positioned ~ ~1 ~ run function sandwiches_galore:crops/corn/summon_upper