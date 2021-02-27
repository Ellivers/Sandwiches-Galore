scoreboard players operation @a[advancements={sandwiches_galore:technical/enter_gui=true},limit=1] sg.gui_id = @s sg.gui_id
tag @s add sg.opened

execute if entity @s[tag=sg.oven] run playsound entity.experience_orb.pickup block @a[distance=..16]