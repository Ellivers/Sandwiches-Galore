scoreboard players set #success sg.dummy 1

    # Bonemeal randomization
    execute store result score #result sg.dummy run random value 0..3
    scoreboard players add #result sg.dummy 2
    scoreboard players operation @s sg.growth_state += #result sg.dummy

    function sandwiches_galore:crops/buckwheat/update

execute at @s run particle minecraft:happy_villager ~ ~.5 ~ .3 .3 .3 0 10
