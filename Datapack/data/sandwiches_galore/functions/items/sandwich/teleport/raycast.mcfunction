scoreboard players add @s sg.dummy 1

execute if score @s sg.dummy matches 161.. run function sandwiches_galore:items/sandwich/teleport/ray_hit
execute unless score @s sg.dummy matches 161.. unless block ^ ^ ^.2 #sandwiches_galore:pearl_through run function sandwiches_galore:items/sandwich/teleport/ray_hit
execute unless score @s sg.dummy matches 161.. if block ^ ^ ^.2 #sandwiches_galore:pearl_through positioned ^ ^ ^.2 run function sandwiches_galore:items/sandwich/teleport/raycast