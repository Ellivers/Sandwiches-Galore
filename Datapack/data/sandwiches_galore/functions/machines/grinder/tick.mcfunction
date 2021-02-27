execute unless block ~ ~ ~ minecraft:barrel run function sandwiches_galore:break/grinder

data modify storage sandwiches:galore Items set from block ~ ~ ~ Items
execute if score $tickNBTChecks sandwiches matches 1 if block ~ ~ ~ minecraft:barrel[open=false] if data storage sandwiches:galore Items[{Slot:0b}] run function sandwiches_galore:machines/slots/0_grinder

# Check input item
execute store result score #tempcount sandwiches run data get storage sandwiches:galore Items[{Slot:11b}].Count
scoreboard players set #temp sandwiches 0
execute if score #temp sandwiches matches 0 if score #tempcount sandwiches matches 3.. if data storage sandwiches:galore Items[{id:"minecraft:wheat",Slot:11b}] run scoreboard players set #temp sandwiches 1
execute if score #temp sandwiches matches 0 if score #tempcount sandwiches matches 8.. if data storage sandwiches:galore Items[{tag:{SG:{BuckwheatSeeds:1b}},Slot:11b}] run scoreboard players set #temp sandwiches 1
execute if score #temp sandwiches matches 0 if score #tempcount sandwiches matches 5.. if data storage sandwiches:galore Items[{tag:{SG:{DriedNetherSprouts:1b}},Slot:11b}] run scoreboard players set #temp sandwiches 1
execute if score #temp sandwiches matches 0 if score #tempcount sandwiches matches 2.. if data storage sandwiches:galore Items[{tag:{SG:{Corncob:1b}},Slot:11b}] run scoreboard players set #temp sandwiches 1
execute if score #temp sandwiches matches 0 run function #sandwiches_galore:grinder/validate_item

# Continue or stop the processing
execute if score @s sg.process_timer = @s sg.process_timer if score #temp sandwiches matches 0 run function sandwiches_galore:machines/grinder/reset_process
execute if score #temp sandwiches matches 1 unless data storage sandwiches:galore Items[{Slot:15b,Count:64b}] run function sandwiches_galore:machines/grinder/process_tick

execute if entity @s[tag=sg.opened] run function sandwiches_galore:machines/grinder/open_tick

execute if block ~ ~-1 ~ hopper run data modify block ~ ~-1 ~ TransferCooldown set value 2