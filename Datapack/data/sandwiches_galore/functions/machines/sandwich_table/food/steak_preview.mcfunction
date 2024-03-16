tag @s add sg.previewing
tag @s add sg.preview_sandwich
loot replace block ~ ~ ~ container.16 loot sandwiches_galore:technical/magic_item
data modify storage sandwiches:galore Item1 set from storage sandwiches:temp root.items[{Slot:10b}]
data modify storage sandwiches:galore Item1.Slot set value 16b

execute store result score #item_1 sg.dummy run data get storage sandwiches:temp root.items[{Slot:10b}].Count
execute store result score #item_2 sg.dummy run data get storage sandwiches:temp root.items[{Slot:13b}].Count
execute if score #item_1 sg.dummy < #item_2 sg.dummy store result storage sandwiches:galore Item1.Count byte 1 run scoreboard players get #item_1 sg.dummy
execute if score #item_2 sg.dummy < #item_1 sg.dummy store result storage sandwiches:galore Item1.Count byte 1 run scoreboard players get #item_2 sg.dummy
execute if score #item_1 sg.dummy = #item_2 sg.dummy store result storage sandwiches:galore Item1.Count byte 1 run scoreboard players get #item_1 sg.dummy

data modify storage sandwiches:galore Item1.tag merge value {SG:{GUI_Item:1b}}
execute unless score #sg.name_level sg.dummy matches 10.. run data modify storage sandwiches:galore Item1.tag.display.Name set value '{"italic":false,"translate":"item.sandwiches_galore.sandwich.cooked_beef"}'
data modify storage sandwiches:galore Item1.tag.display.Lore prepend value '[{"text":"- ","color":"gray","italic":false},{"translate":"item.minecraft.cooked_beef"}]'

data modify block ~ ~ ~ Items[{Slot:16b}] set from storage sandwiches:galore Item1