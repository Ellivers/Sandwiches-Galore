scoreboard objectives remove sandwiches
scoreboard objectives remove sg.growth_state
scoreboard objectives remove sg.heat
scoreboard objectives remove sg.heat_timer
scoreboard objectives remove sg.heat_delay
scoreboard objectives remove sg.process
scoreboard objectives remove sg.process_timer
scoreboard objectives remove sg.fire_timer
scoreboard objectives remove sg.flour_level

execute in minecraft:overworld run forceload remove -30000000 8020
execute in minecraft:overworld run clone -30000000 0 8021 -30000000 0 8021 -30000000 0 8020

# Removes all entities
execute as @e[type=minecraft:armor_stand,tag=sandwiches_galore,tag=sg.machine] at @s run function sandwiches_galore:uninstall.remove_block
kill @e[tag=sandwiches_galore]