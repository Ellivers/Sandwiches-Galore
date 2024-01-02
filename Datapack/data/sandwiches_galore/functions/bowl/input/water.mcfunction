scoreboard players set #temp sg.dummy 1

execute if entity @s[tag=sg.has_water] run function sandwiches_galore:bowl/spit_back
execute unless entity @s[tag=sg.has_water] run function sandwiches_galore:bowl/input/water.check