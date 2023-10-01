scoreboard players set #success sandwiches 1
execute align xyz positioned ~.5 ~ ~.5 if entity @e[tag=smithed.block,distance=...5] run function sandwiches_galore:place/grinder/fail
execute if score #success sandwiches matches 1 align xyz positioned ~.5 ~ ~.5 run function sandwiches_galore:place/grinder/place
