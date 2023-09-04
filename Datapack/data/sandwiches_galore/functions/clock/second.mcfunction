# Runs commands every second

execute as @e[type=#sandwiches_galore:entities,tag=sg.second_clock] at @s run function sandwiches_galore:clock/second.entity
schedule function sandwiches_galore:clock/second 1s replace
