tag @s add sg.previewing
tag @s add sg.preview_sandwich
loot replace block ~ ~ ~ container.16 loot sandwiches_galore:technical/magic_item
data modify storage sandwiches:galore Item1 set from storage sandwiches:galore Items[{Slot:10b}]
data modify storage sandwiches:galore Item1.Slot set value 16b

execute store result score #item_1 sg.dummy run data get storage sandwiches:galore Items[{Slot:10b}].Count
execute store result score #item_2 sg.dummy run data get storage sandwiches:galore Items[{Slot:13b}].Count
execute if score #item_1 sg.dummy < #item_2 sg.dummy store result storage sandwiches:galore Item1.Count byte 1 run scoreboard players get #item_1 sg.dummy
execute if score #item_2 sg.dummy < #item_1 sg.dummy store result storage sandwiches:galore Item1.Count byte 1 run scoreboard players get #item_2 sg.dummy
execute if score #item_1 sg.dummy = #item_2 sg.dummy store result storage sandwiches:galore Item1.Count byte 1 run scoreboard players get #item_1 sg.dummy

data modify storage sandwiches:galore Item1.tag merge value {SG:{GUI_Item:1b}}
execute unless score #sg.name_level sg.dummy matches 11.. run data modify storage sandwiches:galore Item1.tag.display.Name set value '{"italic":false,"translate":"item.sandwiches_galore.sandwich.pufferfish"}'
data modify storage sandwiches:galore Item1.tag.display.Lore prepend value '[{"text":"- ","color":"gray","italic":false},{"translate":"item.minecraft.pufferfish"}]'
execute store result score #sg.custom_model_data sg.dummy run data get storage sandwiches:galore Items[{Slot:10b}].tag.CustomModelData
scoreboard players add #sg.custom_model_data sg.dummy 5
execute store result storage sandwiches:galore Item1.tag.CustomModelData int 1 run scoreboard players get #sg.custom_model_data sg.dummy

data modify block ~ ~ ~ Items[{Slot:16b}] set from storage sandwiches:galore Item1