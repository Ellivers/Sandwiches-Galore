scoreboard players set #success sandwiches 1

    # Bonemeal randomization
    scoreboard players set #max sandwiches 3
    function sandwiches_galore:random
    scoreboard players add #result sandwiches 2
    scoreboard players operation @s sg.growth_state += #result sandwiches

    function sandwiches_galore:crops/buckwheat/update

execute at @s run particle minecraft:happy_villager ~ ~.5 ~ .3 .3 .3 0 10
