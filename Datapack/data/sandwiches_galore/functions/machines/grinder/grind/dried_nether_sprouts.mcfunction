execute store result score @s sandwiches run data get storage sandwiches:grinder_gui Items[{Slot:11b}].Count
scoreboard players remove @s sandwiches 5
execute store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players get @s sandwiches

execute if predicate sandwiches_galore:grinder/nether_sprout_flour if predicate sandwiches_galore:gui/count2 store result block ~ ~ ~ Items[{Slot:15b}].Count byte -1 run data get storage sandwiches:grinder_gui Items[{Slot:15b}].Count -1.0000000001
execute if predicate sandwiches_galore:gui/is_air run loot replace block ~ ~ ~ container.15 loot sandwiches_galore:items/nether_sprout_flour