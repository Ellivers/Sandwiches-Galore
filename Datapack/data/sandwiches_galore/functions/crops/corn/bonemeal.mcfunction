    #Bonemeal randomization
    loot spawn ~ ~ ~ loot sandwiches_galore:bonemeal_random/2-5
    execute store result score @s sandwiches run data get entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{Random:1b}}}] Item.Count
    scoreboard players operation @s sg.growth_state += @s sandwiches
    kill @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{Random:1b}}}]
    kill @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:bone_meal"}}]

execute at @s run particle minecraft:happy_villager ~ ~.5 ~ .3 .3 .3 0 10

execute if score @s sg.growth_state matches 8.. run scoreboard players set @s sg.growth_state 7
execute positioned ~ ~1 ~ run scoreboard players operation @e[type=minecraft:armor_stand,tag=crop_corn_upper,distance=...5,sort=nearest,limit=1] sg.growth_state = @s sg.growth_state

execute if score @s sg.growth_state matches ..1 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710026
execute if score @s sg.growth_state matches 2 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710027
execute if score @s sg.growth_state matches 3 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710028
execute if score @s sg.growth_state matches 4..6 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710029
execute if score @s sg.growth_state matches 7 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710033
execute if score @s sg.growth_state matches 4..7 if entity @s[tag=has_upper_part] positioned ~ ~1 ~ as @e[type=minecraft:armor_stand,tag=crop_corn_upper,distance=...5,sort=nearest,limit=1] run function sandwiches_galore:crops/corn/grow_upper
execute if score @s sg.growth_state matches 4..7 unless entity @s[tag=has_upper_part] positioned ~ ~1 ~ run function sandwiches_galore:crops/corn/summon_upper