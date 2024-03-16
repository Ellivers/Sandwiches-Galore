# Break
execute if score #alternate sg.dummy matches 0 unless block ~ ~ ~ minecraft:barrel run function sandwiches_galore:break/oven

data modify storage sandwiches:temp root.items set from block ~ ~ ~ Items

# Slot 0 check
execute if score $tickNBTChecks sg.dummy matches 1 if score #alternate sg.dummy matches 0 if block ~ ~ ~ minecraft:barrel[open=false] if data storage sandwiches:temp root.items[{Slot:0b}] run function sandwiches_galore:machines/slots/0_oven/main

# If there is no heat left
execute unless score @s sg.heat = @s sg.heat run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710009
execute if score @s sg.heat matches ..0 run scoreboard players reset @s sg.heat

# Check item
function sandwiches_galore:machines/oven/validate_item
# Commands for slot 2
execute unless score @s sg.heat matches 1.. if score #temp sg.dummy matches 1 run function sandwiches_galore:machines/slots/2_oven

# If there are no bakeable items or there is no heat, reset the process (the arrow)
execute if score #temp sg.dummy matches 0 run function sandwiches_galore:machines/oven/reset_process
execute unless score @s sg.heat = @s sg.heat run function sandwiches_galore:machines/oven/reset_process

# Commands for a heated oven
execute if score @s sg.heat matches ..2147483647 run function sandwiches_galore:machines/oven/heated

# If the barrel is open
execute if entity @s[tag=sg.opened] run function sandwiches_galore:machines/oven/open_tick

execute if score #alternate sg.dummy matches 0 if block ~ ~-1 ~ hopper run data modify block ~ ~-1 ~ TransferCooldown set value 2
