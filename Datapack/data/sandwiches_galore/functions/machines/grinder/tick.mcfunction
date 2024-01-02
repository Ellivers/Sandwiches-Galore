execute if score #alternate sg.dummy matches 0 unless block ~ ~ ~ minecraft:barrel run function sandwiches_galore:break/grinder

data modify storage sandwiches:galore Items set from block ~ ~ ~ Items
execute if score $tickNBTChecks sg.dummy matches 1 if score #alternate sg.dummy matches 0 if block ~ ~ ~ minecraft:barrel[open=false] if data storage sandwiches:galore Items[{Slot:0b}] run function sandwiches_galore:machines/slots/0_grinder

# Check input item
execute store result score #tempcount sg.dummy run data get storage sandwiches:galore Items[{Slot:11b}].Count
execute store result score #tempcount2 sg.dummy run data get storage sandwiches:galore Items[{Slot:15b}].Count
scoreboard players set #temp sg.dummy 0
execute if score #temp sg.dummy matches 0 if score #tempcount sg.dummy matches 3.. if data storage sandwiches:galore Items[{id:"minecraft:wheat",Slot:11b}] if score #tempcount2 sg.dummy matches 0 run scoreboard players set #temp sg.dummy 1
execute if score #temp sg.dummy matches 0 if score #tempcount sg.dummy matches 3.. if data storage sandwiches:galore Items[{id:"minecraft:wheat",Slot:11b}] if data storage sandwiches:galore Items[{Slot:15b,tag:{SG:{WheatFlour:1b}}}] run scoreboard players set #temp sg.dummy 1
execute if score #temp sg.dummy matches 0 if score #tempcount sg.dummy matches 8.. if data storage sandwiches:galore Items[{tag:{SG:{BuckwheatSeeds:1b}},Slot:11b}] if score #tempcount2 sg.dummy matches 0 run scoreboard players set #temp sg.dummy 1
execute if score #temp sg.dummy matches 0 if score #tempcount sg.dummy matches 8.. if data storage sandwiches:galore Items[{tag:{SG:{BuckwheatSeeds:1b}},Slot:11b}] if data storage sandwiches:galore Items[{Slot:15b,tag:{SG:{BuckwheatFlour:1b}}}] run scoreboard players set #temp sg.dummy 1
execute if score #temp sg.dummy matches 0 if score #tempcount sg.dummy matches 5.. if data storage sandwiches:galore Items[{tag:{SG:{DriedNetherSprouts:1b}},Slot:11b}] if score #tempcount2 sg.dummy matches 0 run scoreboard players set #temp sg.dummy 1
execute if score #temp sg.dummy matches 0 if score #tempcount sg.dummy matches 5.. if data storage sandwiches:galore Items[{tag:{SG:{DriedNetherSprouts:1b}},Slot:11b}] if data storage sandwiches:galore Items[{Slot:15b,tag:{SG:{NetherSproutFlour:1b}}}] run scoreboard players set #temp sg.dummy 1
execute if score #temp sg.dummy matches 0 if score #tempcount sg.dummy matches 2.. if data storage sandwiches:galore Items[{tag:{SG:{Corncob:1b}},Slot:11b}] if score #tempcount2 sg.dummy matches 0 run scoreboard players set #temp sg.dummy 1
execute if score #temp sg.dummy matches 0 if score #tempcount sg.dummy matches 2.. if data storage sandwiches:galore Items[{tag:{SG:{Corncob:1b}},Slot:11b}] if data storage sandwiches:galore Items[{Slot:15b,tag:{SG:{CornFlour:1b}}}] run scoreboard players set #temp sg.dummy 1
execute if score #temp sg.dummy matches 0 run function #sandwiches_galore:grinder/validate_item

# Continue or stop the processing
execute if score @s sg.process_timer = @s sg.process_timer if score #temp sg.dummy matches 0 run function sandwiches_galore:machines/grinder/reset_process
execute if score #temp sg.dummy matches 1 unless data storage sandwiches:galore Items[{Slot:15b,Count:64b}] run function sandwiches_galore:machines/grinder/process_tick

execute if entity @s[tag=sg.opened] run function sandwiches_galore:machines/grinder/open_tick

execute if score #alternate sg.dummy matches 0 if block ~ ~-1 ~ hopper run data modify block ~ ~-1 ~ TransferCooldown set value 2
