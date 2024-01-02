scoreboard players set #temp sg.dummy 1

execute if entity @s[tag=sg.has_flour] run function sandwiches_galore:bowl/spit_back
execute unless entity @s[tag=sg.has_flour] run function sandwiches_galore:bowl/add/nether_sprout_flour