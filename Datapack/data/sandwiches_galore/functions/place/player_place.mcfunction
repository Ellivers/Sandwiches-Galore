advancement revoke @s only sandwiches_galore:place_item_frame
execute as @e[type=minecraft:item_frame,tag=place,tag=sandwiches_galore,limit=1] at @s run function sandwiches_galore:place/place
#scoreboard players reset @s sg.use_itm_frm