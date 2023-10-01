#define storage sandwiches:galore

scoreboard objectives add sandwiches dummy
scoreboard objectives add sg.growth_state dummy
scoreboard objectives add sg.heat dummy
scoreboard objectives add sg.heat_timer dummy
scoreboard objectives add sg.heat_delay dummy
scoreboard objectives add sg.process dummy
scoreboard objectives add sg.process_timer dummy
scoreboard objectives add sg.fire_timer dummy
scoreboard objectives add sg.flour_level dummy
scoreboard objectives add sg.gui_id dummy
scoreboard objectives add sg.id dummy
scoreboard objectives add sg.use_bow used:bow
scoreboard objectives add sg.sneak custom:sneak_time

execute in minecraft:overworld run forceload remove -30000000 8020
execute in minecraft:overworld run forceload add -30000000 8020
execute in minecraft:overworld run setblock -30000000 0 8020 air replace
execute in minecraft:overworld run setblock -30000000 0 8020 yellow_shulker_box{Items:[{id:"minecraft:azure_bluet",Count:1b}]}

execute in minecraft:the_nether run forceload remove -30000000 8020
execute in minecraft:the_nether run forceload add -30000000 8020
execute in minecraft:the_nether run setblock -30000000 0 8020 air replace
execute in minecraft:the_nether run setblock -30000000 0 8020 yellow_shulker_box{Items:[{id:"minecraft:azure_bluet",Count:1b}]}

execute in minecraft:the_end run forceload remove -30000000 8020
execute in minecraft:the_end run forceload add -30000000 8020
execute in minecraft:the_end run setblock -30000000 0 8020 air replace
execute in minecraft:the_end run setblock -30000000 0 8020 yellow_shulker_box{Items:[{id:"minecraft:azure_bluet",Count:1b}]}

team add no_collision
team modify no_collision collisionRule never

execute unless score $version sandwiches matches 1.. run tellraw @a {"translate": "sandwiches_galore.install_message"}
scoreboard players set $version sandwiches 1

execute unless score $ovenBakeTime sandwiches matches 1.. run scoreboard players set $ovenBakeTime sandwiches 8
execute unless score $grindTime sandwiches matches 1.. run scoreboard players set $grindTime sandwiches 10
execute unless score $tickNBTChecks sandwiches matches 0..1 run scoreboard players set $tickNBTChecks sandwiches 1

execute unless score $randomTickSpeed sandwiches matches 0.. run scoreboard players set $growthAttemptPoint sandwiches 1200
scoreboard players set #maxRandomTickSpeed sandwiches 3600

# Setup for LCG RNG
execute unless score #seed sandwiches matches -2147483648.. run scoreboard players set #seed sandwiches 127689
scoreboard players set #mult sandwiches 1664525
scoreboard players set #incr sandwiches 1013904223

scoreboard players set #3 sandwiches 3
scoreboard players set #100 sandwiches 100

function sandwiches_galore:machines/hopper_clock
function sandwiches_galore:clock/second
