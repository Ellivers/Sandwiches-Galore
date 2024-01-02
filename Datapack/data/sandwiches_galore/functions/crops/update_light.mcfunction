# Called by sandwiches_galore:clock/second.entity


# Might not be necessary?

scoreboard players set #temp sandwiches 0
function sandwiches_galore:get_light_level

execute if score #temp sandwiches matches 1.. run scoreboard players remove #temp sandwiches 1
execute store result entity @s brightness.block int 1 run scoreboard players get #temp sandwiches
execute store result entity @s brightness.sky int 1 run scoreboard players get #temp sandwiches
