data modify block -30000000 0 8020 Items[0] set from block ~ ~ ~ Items[{Slot:15b}]
data modify block -30000000 0 8020 Items[0].Count set value 1b
execute store result score #temp sandwiches run loot insert ~ ~-1 ~ mine -30000000 0 8020 air{drop_contents:1b}
execute if score #temp sandwiches matches 1 store result block ~ ~ ~ Items[{Slot:15b}].Count byte 1 run data get block ~ ~ ~ Items[{Slot:15b}].Count 0.9999999999
