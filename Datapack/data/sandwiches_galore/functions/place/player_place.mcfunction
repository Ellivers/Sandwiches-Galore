execute as @e[type=minecraft:item_frame,tag=sg.place,tag=sandwiches_galore,limit=1] at @s run function sandwiches_galore:place/place
advancement revoke @s only sandwiches_galore:technical/place_item_frame
