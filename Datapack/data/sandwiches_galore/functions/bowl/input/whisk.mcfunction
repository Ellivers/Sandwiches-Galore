scoreboard players set #temp sg.dummy 1

execute unless entity @s[tag=sg.has_flour,tag=sg.has_water] run function sandwiches_galore:bowl/spit_back

execute if entity @s[tag=sg.has_flour,tag=sg.has_water, tag=sg.bowl] run function sandwiches_galore:bowl/whisk
execute if entity @s[tag=sg.has_flour,tag=sg.has_water, tag=sg.large_bowl] run function sandwiches_galore:bowl/large_bowl/whisk