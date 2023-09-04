# Called by sandwiches_galore:crops/interact/debug_stick

scoreboard players remove @s sg.growth_state 1
execute if score @s sg.growth_state matches ..-1 run scoreboard players set @s sg.growth_state 13

function sandwiches_galore:crops/corn/update
