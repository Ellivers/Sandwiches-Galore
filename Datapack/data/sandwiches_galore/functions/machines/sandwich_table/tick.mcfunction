execute if score #alternate sandwiches matches 0 unless block ~ ~ ~ minecraft:barrel run function sandwiches_galore:break/sandwich_table
execute if score $tickNBTChecks sandwiches matches 1 if score #alternate sandwiches matches 0 if block ~ ~ ~ minecraft:barrel[open=false] if data block ~ ~ ~ Items[{Slot:0b}] run function sandwiches_galore:machines/slots/0_sandwich_table/main

execute if entity @s[tag=sg.opened] run function sandwiches_galore:machines/sandwich_table/open_tick

execute if score #alternate sandwiches matches 0 if block ~ ~-1 ~ hopper run data modify block ~ ~-1 ~ TransferCooldown set value 2
