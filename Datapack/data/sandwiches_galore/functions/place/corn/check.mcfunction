execute unless block ~ ~-1 ~ minecraft:farmland align xyz positioned ~.5 ~ ~.5 run function sandwiches_galore:place/corn/fail
execute if block ~ ~-1 ~ minecraft:farmland align xyz positioned ~.5 ~ ~.5 if entity @e[type=minecraft:armor_stand,tag=sg.non_solid_blocks,distance=...5] run function sandwiches_galore:place/corn/fail
execute if block ~ ~-1 ~ minecraft:farmland align xyz positioned ~.5 ~ ~.5 unless entity @e[type=minecraft:armor_stand,tag=sg.non_solid_blocks,distance=...5] run function sandwiches_galore:place/corn/place
stopsound @a[distance=..16] * minecraft:entity.item_frame.place