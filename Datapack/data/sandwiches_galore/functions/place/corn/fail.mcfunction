execute as @a[advancements={sandwiches_galore:technical/place_item_frame=true},gamemode=!creative,limit=1] run function sandwiches_galore:place/corn/fail.give

scoreboard players set #success sg.dummy 0
kill @s
