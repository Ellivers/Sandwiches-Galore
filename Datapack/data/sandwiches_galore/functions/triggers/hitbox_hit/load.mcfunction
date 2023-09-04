execute as @e[type=minecraft:interaction,tag=sandwiches_galore,tag=sg.hitbox,nbt={attack:{}},limit=1] at @s run function sandwiches_galore:triggers/hitbox_hit/run
advancement revoke @s only sandwiches_galore:technical/hit_hitbox
