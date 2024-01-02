# Called by all machines every second

scoreboard players set #temp sandwiches 0

execute positioned ~1 ~ ~ unless block ~ ~ ~ #sandwiches_galore:opaque run function sandwiches_galore:machines/update_light/get_level
execute positioned ~-1 ~ ~ unless block ~ ~ ~ #sandwiches_galore:opaque run function sandwiches_galore:machines/update_light/get_level
execute positioned ~ ~1 ~ unless block ~ ~ ~ #sandwiches_galore:opaque run function sandwiches_galore:machines/update_light/get_level
execute positioned ~ ~-1 ~ unless block ~ ~ ~ #sandwiches_galore:opaque run function sandwiches_galore:machines/update_light/get_level
execute positioned ~ ~ ~1 unless block ~ ~ ~ #sandwiches_galore:opaque run function sandwiches_galore:machines/update_light/get_level
execute positioned ~ ~ ~-1 unless block ~ ~ ~ #sandwiches_galore:opaque run function sandwiches_galore:machines/update_light/get_level

execute if score #temp sandwiches matches 1.. run scoreboard players remove #temp sandwiches 1
execute store result entity @s brightness.block int 1 run scoreboard players get #temp sandwiches
execute store result entity @s brightness.sky int 1 run scoreboard players get #temp sandwiches
