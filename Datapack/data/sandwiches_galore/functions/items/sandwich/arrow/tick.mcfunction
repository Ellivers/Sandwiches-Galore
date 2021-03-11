execute if entity @s[tag=!sg.in_ground] run particle item cookie{CustomModelData:6710001} ~ ~ ~ .2 .3 .2 .08 1
execute if entity @s[tag=!sg.in_ground,nbt={inGround:1b}] run function sandwiches_galore:items/sandwich/arrow/hit_ground
execute if entity @s[tag=sg.in_ground,nbt=!{inGround:1b}] run tag @s remove sg.in_ground

execute if entity @s[tag=sg.in_ground] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..1.6] run function sandwiches_galore:items/sandwich/arrow/pickup
execute if entity @s[tag=sg.in_ground] if entity @a[gamemode=creative,distance=..1.6] run function sandwiches_galore:items/sandwich/arrow/pickup_creative

execute if entity @s[tag=!sg.processed] run function sandwiches_galore:items/sandwich/arrow/shoot.arrow

execute if data entity @s {life:1199s} run function sandwiches_galore:items/sandwich/arrow/despawn
