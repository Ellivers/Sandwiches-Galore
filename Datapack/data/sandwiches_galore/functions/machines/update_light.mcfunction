# Called by all machines every second

scoreboard players set #temp sg.dummy 0

execute positioned ~1 ~ ~ unless block ~ ~ ~ #sandwiches_galore:opaque run function sandwiches_galore:technical/common/get_light_level
execute positioned ~-1 ~ ~ unless block ~ ~ ~ #sandwiches_galore:opaque run function sandwiches_galore:technical/common/get_light_level
execute positioned ~ ~1 ~ unless block ~ ~ ~ #sandwiches_galore:opaque run function sandwiches_galore:technical/common/get_light_level
execute positioned ~ ~-1 ~ unless block ~ ~ ~ #sandwiches_galore:opaque run function sandwiches_galore:technical/common/get_light_level
execute positioned ~ ~ ~1 unless block ~ ~ ~ #sandwiches_galore:opaque run function sandwiches_galore:technical/common/get_light_level
execute positioned ~ ~ ~-1 unless block ~ ~ ~ #sandwiches_galore:opaque run function sandwiches_galore:technical/common/get_light_level

execute if score #temp sg.dummy matches 1.. run scoreboard players remove #temp sg.dummy 1
execute store result entity @s brightness.block int 1 run scoreboard players get #temp sg.dummy
execute store result entity @s brightness.sky int 1 run scoreboard players get #temp sg.dummy
