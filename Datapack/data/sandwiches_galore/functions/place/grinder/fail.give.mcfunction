scoreboard players set #temp sg.dummy 0
execute if predicate sandwiches_galore:holding/grinder_offhand run scoreboard players set #temp sg.dummy 1
execute if predicate sandwiches_galore:holding/grinder_mainhand run scoreboard players set #temp sg.dummy 2

function sandwiches_galore:place/give_back_common

execute if score #temp sg.dummy matches 0 run loot replace entity @s weapon.mainhand loot sandwiches_galore:items/grinder
execute if score #temp sg.dummy matches 3 run loot give @s loot sandwiches_galore:items/grinder
execute if score #temp sg.dummy matches 4 run loot spawn ~ ~ ~ loot sandwiches_galore:items/grinder
