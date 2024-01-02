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

execute in minecraft:overworld run forceload remove -30000000 8020
execute in minecraft:overworld run clone -30000000 0 8021 -30000000 0 8021 -30000000 0 8020

execute in minecraft:the_nether run forceload remove -30000000 8020
execute in minecraft:the_nether run clone -30000000 0 8021 -30000000 0 8021 -30000000 0 8020

execute in minecraft:the_end run forceload remove -30000000 8020
execute in minecraft:the_end run clone -30000000 0 8021 -30000000 0 8021 -30000000 0 8020

# Removes all entities
execute as @e[type=minecraft:armor_stand,tag=sandwiches_galore,tag=sg.machine] at @s run function sandwiches_galore:uninstall.remove_block
kill @e[tag=sandwiches_galore]