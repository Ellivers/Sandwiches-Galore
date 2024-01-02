#define storage sandwiches:galore

scoreboard objectives add sg.dummy dummy
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

execute unless score $version sg.dummy matches 1.. run tellraw @a {"translate": "sandwiches_galore.install_message"}
scoreboard players set $version sg.dummy 2

execute unless score $ovenBakeTime sg.dummy matches 1.. run scoreboard players set $ovenBakeTime sg.dummy 8
execute unless score $grindTime sg.dummy matches 1.. run scoreboard players set $grindTime sg.dummy 10
execute unless score $tickNBTChecks sg.dummy matches 0..1 run scoreboard players set $tickNBTChecks sg.dummy 1

execute unless score $randomTickSpeed sg.dummy matches 0.. run scoreboard players set $growthAttemptPoint sg.dummy 1200
scoreboard players set #maxRandomTickSpeed sg.dummy 3600

scoreboard players set #3 sg.dummy 3
scoreboard players set #100 sg.dummy 100

function sandwiches_galore:machines/hopper_clock
function sandwiches_galore:technical/clock/second
