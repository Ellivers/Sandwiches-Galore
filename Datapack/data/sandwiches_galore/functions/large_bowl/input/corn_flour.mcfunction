execute unless score @s sg.flour_level matches 8.. unless entity @s[tag=!corn_flour,tag=flour] run function sandwiches_galore:large_bowl/add/corn_flour
execute if score @s sg.flour_level matches 8.. run function sandwiches_galore:large_bowl/spit_back
execute unless score @s sg.flour_level matches 8.. if entity @s[tag=!corn_flour,tag=flour] run function sandwiches_galore:large_bowl/spit_back