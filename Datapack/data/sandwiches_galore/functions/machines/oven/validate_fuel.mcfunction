data modify entity @s ArmorItems[2] set value {}
data modify entity @s ArmorItems[2] set from storage sandwiches:galore Items[{Slot:20b}]

scoreboard players set #temp2 sandwiches 0
execute if predicate sandwiches_galore:oven/fuel_items run scoreboard players set #temp2 sandwiches 1
execute if score #temp2 sandwiches matches 0 run function #sandwiches_galore:oven/validate_fuel