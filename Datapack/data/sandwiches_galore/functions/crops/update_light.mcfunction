# Called by sandwiches_galore:clock/second.entity


# Might not be necessary?

scoreboard players set #temp sg.dummy 0
function sandwiches_galore:get_light_level

execute if score #temp sg.dummy matches 1.. run scoreboard players remove #temp sg.dummy 1
execute store result entity @s brightness.block int 1 run scoreboard players get #temp sg.dummy
execute store result entity @s brightness.sky int 1 run scoreboard players get #temp sg.dummy
