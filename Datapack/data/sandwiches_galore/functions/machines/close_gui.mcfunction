scoreboard players operation #temp_id sg.dummy = @s sg.gui_id
execute as @a if score @s sg.gui_id = @s sg.gui_id run scoreboard players reset @s sg.gui_id
tag @s remove sg.opened

execute if entity @s[tag=sg.oven] run playsound entity.experience_orb.pickup block @a[distance=..16] ~ ~ ~ 1 0.5
