tag @s add sg.previewing
tag @s add sg.preview_nether_sprout_base
loot replace block ~ ~ ~ container.16 loot sandwiches_galore:sandwich_table/sandwich_nether_sprout
execute store result score #item_1 sg.dummy run data get storage sandwiches:temp root.items[{Slot:10b}].Count
execute store result score #item_2 sg.dummy run data get storage sandwiches:temp root.items[{Slot:13b}].Count
execute if score #item_1 sg.dummy < #item_2 sg.dummy store result block ~ ~ ~ Items[{Slot:16b}].Count byte 1 run scoreboard players get #item_1 sg.dummy
execute if score #item_2 sg.dummy < #item_1 sg.dummy store result block ~ ~ ~ Items[{Slot:16b}].Count byte 1 run scoreboard players get #item_2 sg.dummy
execute if score #item_1 sg.dummy = #item_2 sg.dummy store result block ~ ~ ~ Items[{Slot:16b}].Count byte 1 run scoreboard players get #item_1 sg.dummy