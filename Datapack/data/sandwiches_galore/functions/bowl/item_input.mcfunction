scoreboard players set #temp sg.dummy 0

execute if entity @s[tag=sg.bowl] run function sandwiches_galore:bowl/input.small_bowl
execute if entity @s[tag=sg.large_bowl] run function sandwiches_galore:bowl/input.large_bowl

execute if predicate sandwiches_galore:bowl/whisk run function sandwiches_galore:bowl/input/whisk

function #sandwiches_galore:bowl/input

execute if score #temp sg.dummy matches 0 run function sandwiches_galore:bowl/spit_back