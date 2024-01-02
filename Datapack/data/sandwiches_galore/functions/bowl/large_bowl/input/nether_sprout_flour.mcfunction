scoreboard players set #temp sg.dummy 1

execute if score @s sg.flour_level matches 8.. run function sandwiches_galore:bowl/spit_back
execute unless score @s sg.flour_level matches 8.. unless entity @s[tag=!sg.flour.nether_sprout,tag=sg.has_flour] run function sandwiches_galore:bowl/large_bowl/add/nether_sprout_flour
execute unless score @s sg.flour_level matches 8.. if entity @s[tag=!sg.flour.nether_sprout,tag=sg.has_flour] run function sandwiches_galore:bowl/spit_back