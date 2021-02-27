execute store result score @s sandwiches run data get storage sandwiches:galore Items[{Slot:11b}].Count
scoreboard players remove @s sandwiches 2
execute store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players get @s sandwiches

execute if data storage sandwiches:galore Items[{tag:{SG:{CornFlour:1b}},Slot:15b}] store result block ~ ~ ~ Items[{Slot:15b}].Count byte -1 run data get storage sandwiches:galore Items[{Slot:15b}].Count -1.0000000001
execute unless data storage sandwiches:galore Items[{Slot:15b}] run loot replace block ~ ~ ~ container.15 loot sandwiches_galore:items/corn_flour