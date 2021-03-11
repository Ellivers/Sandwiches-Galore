tag @s add sg.previewing
tag @s add sg.preview_sandwich
loot replace block ~ ~ ~ container.16 loot sandwiches_galore:technical/magic_item
data modify storage sandwiches:galore Item1 set from storage sandwiches:galore Items[{Slot:10b}]
data modify storage sandwiches:galore Item1.Slot set value 16b

execute store result score #item_1 sandwiches run data get storage sandwiches:galore Items[{Slot:10b}].Count
execute store result score #item_2 sandwiches run data get storage sandwiches:galore Items[{Slot:13b}].Count
execute if score #item_1 sandwiches < #item_2 sandwiches store result storage sandwiches:galore Item1.Count byte 1 run scoreboard players get #item_1 sandwiches
execute if score #item_2 sandwiches < #item_1 sandwiches store result storage sandwiches:galore Item1.Count byte 1 run scoreboard players get #item_2 sandwiches
execute if score #item_1 sandwiches = #item_2 sandwiches store result storage sandwiches:galore Item1.Count byte 1 run scoreboard players get #item_1 sandwiches

data modify storage sandwiches:galore Item1.tag merge value {SG:{GUI_Item:1b}}
execute unless score #sg.name_level sandwiches matches 10.. run data modify storage sandwiches:galore Item1.tag.display.Name set value '{"italic":false,"translate":"item.sandwiches_galore.sandwich.cooked_mutton"}'
data modify storage sandwiches:galore Item1.tag.display.Lore prepend value '[{"text":"- ","color":"gray","italic":false},{"translate":"item.minecraft.cooked_mutton"}]'

data modify block ~ ~ ~ Items[{Slot:16b}] set from storage sandwiches:galore Item1