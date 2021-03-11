execute if predicate sandwiches_galore:holding/bow run function sandwiches_galore:items/bow/tick
tag @s[gamemode=!creative,predicate=!sandwiches_galore:holding/bow] remove sg.holding_bow
execute if entity @s[gamemode=!creative,scores={sg.use_bow=1..},predicate=sandwiches_galore:holding/bow] run function sandwiches_galore:items/bow/break

execute if entity @s[gamemode=creative,scores={sg.use_bow=1..}] run function sandwiches_galore:items/bow/search_creative/start
