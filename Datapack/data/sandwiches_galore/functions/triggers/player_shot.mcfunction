execute as @e[type=armor_stand,tag=sandwiches_galore,tag=sg.sandwich_arrow_marker,sort=nearest,limit=1] at @s run function sandwiches_galore:items/sandwich/arrow/hit_entity
advancement revoke @s only sandwiches_galore:technical/player_shot