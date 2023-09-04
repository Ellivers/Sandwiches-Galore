# Called by sandwiches_galore:crops/interact/load

execute if predicate sandwiches_galore:holding/bone_meal/offhand run scoreboard players set #temp sandwiches 1
execute if predicate sandwiches_galore:holding/bone_meal/mainhand run scoreboard players set #temp sandwiches 2

execute if score #temp sandwiches matches 0 if predicate sandwiches_galore:holding/debug_stick/offhand run scoreboard players set #temp sandwiches 3
execute if predicate sandwiches_galore:holding/debug_stick/mainhand run scoreboard players set #temp sandwiches 4

execute if score #temp sandwiches matches 3..4 if entity @s[gamemode=!creative] run scoreboard players set #temp sandwiches 0
