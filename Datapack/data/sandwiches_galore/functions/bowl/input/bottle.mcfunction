scoreboard players set #temp sg.dummy 1

execute unless entity @s[tag=!sg.has_flour,tag=sg.has_water] run function sandwiches_galore:bowl/spit_back
execute if entity @s[tag=!sg.has_flour,tag=sg.has_water] run function sandwiches_galore:bowl/fill_bottle