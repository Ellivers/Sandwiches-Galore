scoreboard objectives remove sg.dummy
scoreboard objectives remove sg.growth_state
scoreboard objectives remove sg.heat
scoreboard objectives remove sg.heat_timer
scoreboard objectives remove sg.heat_delay
scoreboard objectives remove sg.process
scoreboard objectives remove sg.process_timer
scoreboard objectives remove sg.flour_level
scoreboard objectives remove sg.gui_id
scoreboard objectives remove sg.id
scoreboard objectives remove sg.use_bow

# Removes all entities
execute as @e[type=minecraft:armor_stand,tag=sandwiches_galore,tag=sg.machine] at @s run function sandwiches_galore:technical/uninstall/remove_block
kill @e[tag=sandwiches_galore]
