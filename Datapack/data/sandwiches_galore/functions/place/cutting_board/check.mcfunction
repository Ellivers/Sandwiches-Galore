stopsound @a[distance=..10,tag=!global.ignore,tag=!global.ignore.gui] * minecraft:entity.item_frame.place
execute align xyz positioned ~.5 ~ ~.5 if entity @e[type=minecraft:armor_stand,tag=sg.non_solid_blocks,distance=...5] run function sandwiches_galore:place/cutting_board/fail
execute align xyz positioned ~.5 ~ ~.5 unless entity @e[type=minecraft:armor_stand,tag=sg.non_solid_blocks,distance=...5] run function sandwiches_galore:place/cutting_board/place