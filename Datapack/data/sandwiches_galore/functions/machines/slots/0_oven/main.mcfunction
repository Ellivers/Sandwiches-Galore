data modify entity @s ArmorItems[2] set value {}
data modify entity @s ArmorItems[2] set from storage sandwiches:temp root.items[{Slot:0b}]

scoreboard players set #temp2 sg.dummy 0
execute if predicate sandwiches_galore:oven/fuel_items run scoreboard players set #temp2 sg.dummy 1
execute if score #temp2 sg.dummy matches 0 run function #sandwiches_galore:oven/validate_fuel

execute if score #temp2 sg.dummy matches 1 unless data storage sandwiches:temp root.items[{Slot:20b}] run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 20b
execute if score #temp2 sg.dummy matches 1 if data storage sandwiches:temp root.items[{Slot:20b}] run function sandwiches_galore:machines/slots/0_oven/fuel1

execute if score #temp2 sg.dummy matches 0 unless data storage sandwiches:temp root.items[{Slot:2b}] run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 2b
execute if score #temp2 sg.dummy matches 0 if data storage sandwiches:temp root.items[{Slot:2b}] run function sandwiches_galore:machines/slots/0_oven/item1
