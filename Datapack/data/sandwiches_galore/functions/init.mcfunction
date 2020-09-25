scoreboard objectives add sandwiches dummy
scoreboard objectives add sg.growth_state dummy
scoreboard objectives add sg.heat dummy
scoreboard objectives add sg.heat_timer dummy
scoreboard objectives add sg.heat_delay dummy
scoreboard objectives add sg.process dummy
scoreboard objectives add sg.process_timer dummy
scoreboard objectives add sg.fire_timer dummy
scoreboard objectives add sg.flour_level dummy
scoreboard objectives add sg.item_count dummy
scoreboard objectives add sg.use_itm_frm minecraft.used:minecraft.item_frame

scoreboard objectives add sg.process_temp dummy
scoreboard objectives add sg.heat_temp dummy

team add no_collision
team modify no_collision collisionRule never

execute unless score $version sandwiches matches 1.. run tellraw @a {"translate": "sandwiches_galore.install_message"}
scoreboard players set $version sandwiches 1

execute unless score $growthAttemptPoint sandwiches matches 0.. run scoreboard players set $growthAttemptPoint sandwiches 1200
execute unless score $ovenFuelTime sandwiches matches 1.. run scoreboard players set $ovenFuelTime sandwiches 119
# Note: remove ^
execute unless score $ovenBakeTime sandwiches matches 1.. run scoreboard players set $ovenBakeTime sandwiches 8
execute unless score $grindTime sandwiches matches 1.. run scoreboard players set $grindTime sandwiches 10

scoreboard players set #3 sandwiches 3