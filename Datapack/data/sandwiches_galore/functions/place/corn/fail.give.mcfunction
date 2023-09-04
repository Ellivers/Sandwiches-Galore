scoreboard players set #temp sandwiches 0
execute if predicate sandwiches_galore:holding/corn_seeds_offhand run scoreboard players set #temp sandwiches 1
execute if predicate sandwiches_galore:holding/corn_seeds_mainhand run scoreboard players set #temp sandwiches 2

function sandwiches_galore:place/give_back_common

execute if score #temp sandwiches matches 0 run loot replace entity @s weapon.mainhand loot sandwiches_galore:items/corn_kernels
execute if score #temp sandwiches matches 3 run loot give @s loot sandwiches_galore:items/corn_kernels
execute if score #temp sandwiches matches 4 run loot spawn ~ ~ ~ loot sandwiches_galore:items/corn_kernels
