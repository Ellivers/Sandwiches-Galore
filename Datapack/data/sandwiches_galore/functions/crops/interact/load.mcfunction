# Called by sandwiches_galore:triggers/interact/run

scoreboard players set #temp sg.dummy 0
execute on target run function sandwiches_galore:crops/interact/load.player

execute if score #temp sg.dummy matches 0..2 if entity @s[tag=sg.crop.corn,scores={sg.growth_state=13..}] run function sandwiches_galore:crops/corn/take_corn
execute if score #temp sg.dummy matches 1..2 run function sandwiches_galore:crops/interact/bonemeal
execute if score #temp sg.dummy matches 3..4 run function sandwiches_galore:crops/interact/debug_stick
