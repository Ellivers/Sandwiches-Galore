execute if entity @s[tag=sg.bowl,predicate=!sandwiches_galore:in_nether] run function sandwiches_galore:bowl/add/water
execute if entity @s[tag=sg.large_bowl,predicate=!sandwiches_galore:in_nether] run function sandwiches_galore:bowl/large_bowl/add/water
execute if predicate sandwiches_galore:in_nether run function sandwiches_galore:bowl/input/water.poof