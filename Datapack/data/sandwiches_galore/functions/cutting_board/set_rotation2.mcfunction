execute if entity @s[tag=sg.rot0] run scoreboard players set @s sg.dummy 0
execute if entity @s[tag=sg.rot90] run scoreboard players set @s sg.dummy 90
execute if entity @s[tag=sg.rot180] run scoreboard players set @s sg.dummy 180
execute if entity @s[tag=sg.rot-90] run scoreboard players set @s sg.dummy -90
execute store result score #temp sg.dummy run data get entity @s Pose.Head[1]
scoreboard players operation #temp sg.dummy += @s sg.dummy
execute store result entity @s Pose.Head[1] float 1 run scoreboard players get #temp sg.dummy