execute store success score #temp sandwiches if data storage sandwiches:galore Item1.tag.SG{SandwichArrow:1b}
execute if score #temp sandwiches matches 1 run data modify storage sandwiches:galore Item2 set from storage sandwiches:galore Items[0]

execute if score #temp sandwiches matches 1 run function sandwiches_galore:items/sandwich/arrow/shoot