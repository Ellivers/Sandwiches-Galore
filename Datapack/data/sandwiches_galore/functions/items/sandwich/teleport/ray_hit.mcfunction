execute store result score #temp sg.dummy run data get entity @s Health
execute if entity @s[gamemode=creative] run scoreboard players set #temp sg.dummy 20

execute if entity @s[gamemode=!creative] unless score #temp sg.dummy matches ..6 run effect give @s instant_damage
execute store result score #temp2 sg.dummy run gamerule showDeathMessages
execute if score #temp sg.dummy matches ..6 if score #temp2 sg.dummy matches 1 run gamerule showDeathMessages false
execute if score #temp sg.dummy matches ..6 run kill @s
execute if score #temp sg.dummy matches ..6 if score #temp2 sg.dummy matches 1 run tellraw @a {"translate":"death.sandwiches_galore.teleport","with":[{"selector":"@s"}]}
execute if score #temp sg.dummy matches ..6 if score #temp2 sg.dummy matches 1 run gamerule showDeathMessages true

playsound item.chorus_fruit.teleport player @a[distance=..16]
execute align xyz run tp ~.5 ~.5 ~.5
execute at @s run particle portal ~ ~.5 ~ 0.3 0.5 0.3 1 50
