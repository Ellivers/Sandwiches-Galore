tp @s ~ ~ ~ facing entity @p[tag=!global.ignore]
execute if entity @s[y_rotation=51..151] run data merge entity @e[type=minecraft:armor_stand,tag=sandwiches_galore,tag=oven,sort=nearest,limit=1] {Pose:{Head:[0f,90f,0f]}}
execute if entity @s[y_rotation=150..-131] run data merge entity @e[type=minecraft:armor_stand,tag=sandwiches_galore,tag=oven,sort=nearest,limit=1] {Pose:{Head:[0f,180f,0f]}}
execute if entity @s[y_rotation=-130..-42] run data merge entity @e[type=minecraft:armor_stand,tag=sandwiches_galore,tag=oven,sort=nearest,limit=1] {Pose:{Head:[0f,-90f,0f]}}