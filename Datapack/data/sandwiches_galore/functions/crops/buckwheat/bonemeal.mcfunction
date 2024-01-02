scoreboard players set #success sg.dummy 1

    # Bonemeal randomization
    scoreboard players set #max sg.dummy 3
    function sandwiches_galore:random
    scoreboard players add #result sg.dummy 2
    scoreboard players operation @s sg.growth_state += #result sg.dummy

    function sandwiches_galore:crops/buckwheat/update

execute at @s run particle minecraft:happy_villager ~ ~.5 ~ .3 .3 .3 0 10
