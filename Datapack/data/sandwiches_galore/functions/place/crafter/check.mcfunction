scoreboard players set #success sg.dummy 1
execute align xyz positioned ~.5 ~ ~.5 if entity @e[tag=smithed.block,distance=...5] run function sandwiches_galore:place/crafter/fail
execute if score #success sg.dummy matches 1 align xyz positioned ~.5 ~ ~.5 run function sandwiches_galore:place/crafter/place
