scoreboard players set #success sandwiches 1
execute unless block ~ ~-1 ~ minecraft:farmland align xyz positioned ~.5 ~ ~.5 run function sandwiches_galore:place/corn/fail
execute if score #success sandwiches matches 1 unless block ~ ~ ~ #sandwiches_galore:air align xyz positioned ~.5 ~ ~.5 run function sandwiches_galore:place/corn/fail
execute if score #success sandwiches matches 1 align xyz positioned ~.5 ~ ~.5 if entity @e[tag=smithed.block,distance=...5] run function sandwiches_galore:place/corn/fail
execute if score #success sandwiches matches 1 align xyz positioned ~.5 ~ ~.5 run function sandwiches_galore:place/corn/place
