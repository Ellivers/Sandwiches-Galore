# Called by sandwiches_galore:crops/interact/load

execute if predicate sandwiches_galore:holding/bone_meal/offhand run scoreboard players set #temp sg.dummy 1
execute if predicate sandwiches_galore:holding/bone_meal/mainhand run scoreboard players set #temp sg.dummy 2

execute if score #temp sg.dummy matches 0 if predicate sandwiches_galore:holding/debug_stick/offhand run scoreboard players set #temp sg.dummy 3
execute if predicate sandwiches_galore:holding/debug_stick/mainhand run scoreboard players set #temp sg.dummy 4

execute if score #temp sg.dummy matches 3..4 if entity @s[gamemode=!creative] run scoreboard players set #temp sg.dummy 0
