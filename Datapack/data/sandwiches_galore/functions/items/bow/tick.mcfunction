execute if entity @s[gamemode=!creative,predicate=sandwiches_galore:holding/bow,tag=!sg.holding_bow] run function sandwiches_galore:items/bow/arrows_changed
tag @s[gamemode=!creative,predicate=sandwiches_galore:holding/bow] add sg.holding_bow

execute store result score #temp2 sg.dummy run data get entity @s SelectedItemSlot
execute unless score #temp2 sg.dummy = @s sg.heat run function sandwiches_galore:items/bow/arrows_changed
# Reusing scores
scoreboard players operation @s sg.heat = #temp2 sg.dummy
