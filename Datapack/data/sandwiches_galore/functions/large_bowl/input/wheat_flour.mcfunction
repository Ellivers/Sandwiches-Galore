execute unless score @s sg.flour_level matches 8.. unless entity @s[tag=!wheat_flour,tag=flour] run function sandwiches_galore:large_bowl/add/wheat_flour
execute if score @s sg.flour_level matches 8.. run function sandwiches_galore:large_bowl/spit_back
execute unless score @s sg.flour_level matches 8.. if entity @s[tag=!wheat_flour,tag=flour] run function sandwiches_galore:large_bowl/spit_back