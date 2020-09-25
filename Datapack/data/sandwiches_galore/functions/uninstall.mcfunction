scoreboard objectives remove sandwiches
scoreboard objectives remove sg.growth_state
scoreboard objectives remove sg.heat
scoreboard objectives remove sg.heat_timer
scoreboard objectives remove sg.heat_delay
scoreboard objectives remove sg.process
scoreboard objectives remove sg.process_timer
scoreboard objectives remove sg.fire_timer
scoreboard objectives remove sg.flour_level
scoreboard objectives remove sg.item_count
scoreboard objectives remove sg.use_itm_frm

scoreboard objectives remove sg.process_temp
scoreboard objectives remove sg.heat_temp

# Removes all entities
execute as @e[type=minecraft:armor_stand,tag=sandwiches_galore,tag=machines] at @s run function sandwiches_galore:uninstall.remove_block
kill @e[tag=sandwiches_galore]