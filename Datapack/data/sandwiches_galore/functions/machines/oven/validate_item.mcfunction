scoreboard players set #temp sg.dummy 0
execute if score #temp sg.dummy matches 0 if data storage sandwiches:temp root.items[{Slot:2b,tag:{SG:{Bakeable:1b}}}] run scoreboard players set #temp sg.dummy 1
execute if score #temp sg.dummy matches 0 if data storage sandwiches:temp root.items[{id:"minecraft:nether_sprouts",Slot:2b}] run scoreboard players set #temp sg.dummy 1
execute if score #temp sg.dummy matches 0 run function #sandwiches_galore:oven/validate_item