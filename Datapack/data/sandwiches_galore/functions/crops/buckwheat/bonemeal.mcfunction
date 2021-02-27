    # Bonemeal randomization
    scoreboard players set #max sandwiches 3
    function sandwiches_galore:random
    scoreboard players add #result sandwiches 2
    scoreboard players operation @s sg.growth_state += #result sandwiches
    kill @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:bone_meal"}}]

    # Checking for the growth state
    execute if score @s sg.growth_state matches ..1 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710002
    execute if score @s sg.growth_state matches 2 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710003
    execute if score @s sg.growth_state matches 3 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710004
    execute if score @s sg.growth_state matches 4 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710005
    execute if score @s sg.growth_state matches 5 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710006
    execute if score @s sg.growth_state matches 6 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710007
    execute if score @s sg.growth_state matches 7.. run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710008

execute at @s run particle minecraft:happy_villager ~ ~.5 ~ .3 .3 .3 0 10