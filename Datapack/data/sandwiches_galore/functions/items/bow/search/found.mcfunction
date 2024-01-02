scoreboard players set #found sg.dummy 1

data modify storage sandwiches:galore Item2 set from storage sandwiches:galore Items2[0]
data modify storage sandwiches:galore Item2.Count set value 1b

execute at @s run function sandwiches_galore:items/sandwich/arrow/schedule
