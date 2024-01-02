data modify entity @s ArmorItems[2] set value {}
data modify entity @s ArmorItems[2] set from storage sandwiches:galore Items[{Slot:20b}]

scoreboard players set #temp2 sg.dummy 0
execute if predicate sandwiches_galore:oven/fuel_items run scoreboard players set #temp2 sg.dummy 1
execute if score #temp2 sg.dummy matches 0 run function #sandwiches_galore:oven/validate_fuel