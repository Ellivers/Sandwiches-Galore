execute if score @s sg.growth_state matches 7..13 if predicate sandwiches_galore:chance/corn_ready_chance run scoreboard players set @s sg.growth_state 14
execute if score @s sg.growth_state matches 3..6 if block ~ ~1 ~ #sandwiches_galore:grow_through run scoreboard players add @s sg.growth_state 1
execute if score @s sg.growth_state matches ..2 run scoreboard players add @s sg.growth_state 1

function sandwiches_galore:crops/corn/update
