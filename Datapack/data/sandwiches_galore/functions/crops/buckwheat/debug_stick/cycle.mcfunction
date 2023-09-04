# Called by sandwiches_galore:crops/interact/debug_stick

scoreboard players add @s sg.growth_state 1
execute if score @s sg.growth_state matches 8.. run scoreboard players set @s sg.growth_state 0

function sandwiches_galore:crops/buckwheat/update
