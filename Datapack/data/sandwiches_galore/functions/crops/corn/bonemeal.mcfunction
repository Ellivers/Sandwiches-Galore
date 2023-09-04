scoreboard players set #success sandwiches 1

    # Bonemeal randomization
    scoreboard players set #max sandwiches 3
    function sandwiches_galore:random
    scoreboard players add #result sandwiches 2
    scoreboard players operation @s sg.growth_state += #result sandwiches
    execute if score @s[tag=!sg.has_upper_half] sg.growth_state matches 4.. unless block ~ ~1 ~ #sandwiches_galore:grow_through run scoreboard players set #success sandwiches 0
    execute if score @s[tag=!sg.has_upper_half] sg.growth_state matches 4.. unless block ~ ~1 ~ #sandwiches_galore:grow_through run scoreboard players set @s sg.growth_state 3

    function sandwiches_galore:crops/corn/update

execute if score #success sandwiches matches 1 at @s[tag=!sg.has_upper_half] run particle minecraft:happy_villager ~ ~.5 ~ .3 .3 .3 0 10
execute at @s[tag=sg.has_upper_half] run particle minecraft:happy_villager ~ ~1 ~ .3 1.6 .3 0 15
