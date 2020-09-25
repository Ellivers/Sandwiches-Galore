    #Bonemeal randomization
    loot spawn ~ ~ ~ loot sandwiches_galore:bonemeal_random/2-5
    execute store result score @s sandwiches run data get entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{Random:1b}}}] Item.Count
    scoreboard players operation @s sg.growth_state += @s sandwiches
    kill @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{Random:1b}}}]
    kill @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:bone_meal"}}]

execute at @s run particle minecraft:happy_villager ~ ~.5 ~ .3 .3 .3 0 10

    #Checking for scores
    execute if score @s sg.growth_state matches ..1 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710002
    execute if score @s sg.growth_state matches 2 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710003
    execute if score @s sg.growth_state matches 3 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710004
    execute if score @s sg.growth_state matches 4 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710005
    execute if score @s sg.growth_state matches 5 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710006
    execute if score @s sg.growth_state matches 6 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710007
    execute if score @s sg.growth_state matches 7.. run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710008