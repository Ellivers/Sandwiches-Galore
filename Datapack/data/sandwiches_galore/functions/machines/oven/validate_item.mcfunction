scoreboard players set #temp sandwiches 0
execute if score #temp sandwiches matches 0 if data storage sandwiches:galore Items[{Slot:2b,tag:{SG:{Bakeable:1b}}}] run scoreboard players set #temp sandwiches 1
execute if score #temp sandwiches matches 0 if data storage sandwiches:galore Items[{id:"minecraft:nether_sprouts",Slot:2b}] run scoreboard players set #temp sandwiches 1
execute if score #temp sandwiches matches 0 run function #sandwiches_galore:oven/validate_item