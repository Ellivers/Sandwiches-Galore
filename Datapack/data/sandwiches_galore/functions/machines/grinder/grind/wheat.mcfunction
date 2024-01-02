execute store result score @s sg.dummy run data get storage sandwiches:galore Items[{Slot:11b}].Count
scoreboard players remove @s sg.dummy 3
execute store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players get @s sg.dummy

execute if data storage sandwiches:galore Items[{tag:{SG:{WheatFlour:1b}},Slot:15b}] store result block ~ ~ ~ Items[{Slot:15b}].Count byte -1 run data get storage sandwiches:galore Items[{Slot:15b}].Count -1.0000000001
execute unless data storage sandwiches:galore Items[{Slot:15b}] run loot replace block ~ ~ ~ container.15 loot sandwiches_galore:items/wheat_flour