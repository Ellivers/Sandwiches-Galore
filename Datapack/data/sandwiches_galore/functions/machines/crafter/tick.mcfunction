execute unless block ~ ~ ~ minecraft:barrel run function sandwiches_galore:break/crafter
execute if score $tickNBTChecks sandwiches matches 1 if block ~ ~ ~ minecraft:barrel[open=false] if data block ~ ~ ~ Items[{Slot:0b}] run function sandwiches_galore:machines/slots/0_crafter

execute if entity @s[tag=sg.opened] run function sandwiches_galore:machines/crafter/open_tick

execute if block ~ ~-1 ~ hopper run data modify block ~ ~-1 ~ TransferCooldown set value 2