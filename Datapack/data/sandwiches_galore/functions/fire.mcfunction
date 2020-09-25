scoreboard players remove @s sg.fire_timer 1
execute if score @s sg.fire_timer matches ..0 run data modify entity @s Fire set value 32767s
execute if score @s sg.fire_timer matches ..0 run scoreboard players set @s sg.fire_timer 32766