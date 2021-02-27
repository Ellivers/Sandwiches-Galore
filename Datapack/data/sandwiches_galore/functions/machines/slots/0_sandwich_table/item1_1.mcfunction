# Check if the input item and the item already in the slot are the same or not

data modify storage sandwiches:galore Item2 set value {}
data modify storage sandwiches:galore Item1 set from storage sandwiches:galore Items[{Slot:0b}]
data modify storage sandwiches:galore Item2 set from storage sandwiches:galore Items[{Slot:10b}]

data merge storage sandwiches:galore {Item1:{Slot:0b,Count:0b},Item2:{Slot:0b,Count:0b}}

execute store success score #temp sandwiches run data modify storage sandwiches:galore Item2 set from storage sandwiches:galore Item1

execute if score #temp sandwiches matches 1 run scoreboard players set #temp2 sandwiches 0
execute unless score #temp sandwiches matches 1 run function sandwiches_galore:machines/slots/0_sandwich_table/item1_2
