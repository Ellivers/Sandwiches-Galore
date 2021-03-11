tag @s add sg.previewing
tag @s add sg.preview_sandwich
loot replace block ~ ~ ~ container.16 loot sandwiches_galore:technical/magic_item
data modify storage sandwiches:galore Item1 set from storage sandwiches:galore Items[{Slot:10b}]
data modify storage sandwiches:galore Item1.Slot set value 16b
data modify storage sandwiches:galore Item1.id set value "minecraft:arrow"
data modify storage sandwiches:galore Item1.tag.display.Name set value '{"italic":false,"translate":"item.sandwiches_galore.sandwich_arrow"}'
data modify storage sandwiches:galore Item1.tag merge value {SG:{GUI_Item:1b}}

execute store result score #item_1 sandwiches run data get storage sandwiches:galore Items[{Slot:10b}].Count
execute store result score #item_2 sandwiches run data get storage sandwiches:galore Items[{Slot:13b}].Count
execute if score #item_1 sandwiches < #item_2 sandwiches store result storage sandwiches:galore Item1.Count byte 1 run scoreboard players get #item_1 sandwiches
execute if score #item_2 sandwiches < #item_1 sandwiches store result storage sandwiches:galore Item1.Count byte 1 run scoreboard players get #item_2 sandwiches
execute if score #item_1 sandwiches = #item_2 sandwiches store result storage sandwiches:galore Item1.Count byte 1 run scoreboard players get #item_1 sandwiches

execute store result score #sg.custom_model_data sandwiches run data get storage sandwiches:galore Items[{Slot:10b}].tag.CustomModelData
execute if score #sg.custom_model_data sandwiches matches 6710006.. run scoreboard players remove #sg.custom_model_data sandwiches 5
execute store result storage sandwiches:galore Item1.tag.CustomModelData int 1 run scoreboard players get #sg.custom_model_data sandwiches

data modify block ~ ~ ~ Items[{Slot:16b}] set from storage sandwiches:galore Item1
