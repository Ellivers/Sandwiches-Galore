#define storage sandwiches:galore

scoreboard objectives add sandwiches dummy
scoreboard objectives add sg.growth_state dummy
scoreboard objectives add sg.heat dummy
scoreboard objectives add sg.heat_timer dummy
scoreboard objectives add sg.heat_delay dummy
scoreboard objectives add sg.process dummy
scoreboard objectives add sg.process_timer dummy
scoreboard objectives add sg.flour_level dummy
scoreboard objectives add sg.gui_id dummy
scoreboard objectives add sg.id dummy
scoreboard objectives add sg.use_bow used:bow
scoreboard objectives add sg.sneak custom:sneak_time

execute unless score $version sandwiches matches 1.. run tellraw @a {"translate": "sandwiches_galore.install_message"}
scoreboard players set $version sandwiches 2

execute unless score $ovenBakeTime sandwiches matches 1.. run scoreboard players set $ovenBakeTime sandwiches 8
execute unless score $grindTime sandwiches matches 1.. run scoreboard players set $grindTime sandwiches 10
execute unless score $tickNBTChecks sandwiches matches 0..1 run scoreboard players set $tickNBTChecks sandwiches 1

execute unless score $randomTickSpeed sandwiches matches 0.. run scoreboard players set $growthAttemptPoint sandwiches 1200
scoreboard players set #maxRandomTickSpeed sandwiches 3600

scoreboard players set #3 sandwiches 3
scoreboard players set #100 sandwiches 100

function sandwiches_galore:machines/hopper_clock
function sandwiches_galore:clock/second
