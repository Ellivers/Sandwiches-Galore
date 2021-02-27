tag @s add sg.previewing
tag @s add sg.preview_sandwich
loot replace block ~ ~ ~ container.16 loot sandwiches_galore:technical/magic_item
data modify storage sandwiches:galore PreviewItem set from storage sandwiches:galore Items[{Slot:10b}]
data modify storage sandwiches:galore PreviewItem.Slot set value 16b
data modify block ~ ~ ~ Items[{Slot:16b}] set from storage sandwiches:galore PreviewItem

execute store result score #item_1 sandwiches run data get storage sandwiches:galore Items[{Slot:10b}].Count
execute store result score #item_2 sandwiches run data get storage sandwiches:galore Items[{Slot:13b}].Count
execute if score #item_1 sandwiches < #item_2 sandwiches store result block ~ ~ ~ Items[{Slot:16b}].Count byte 1 run scoreboard players get #item_1 sandwiches
execute if score #item_2 sandwiches < #item_1 sandwiches store result block ~ ~ ~ Items[{Slot:16b}].Count byte 1 run scoreboard players get #item_2 sandwiches
execute if score #item_1 sandwiches = #item_2 sandwiches store result block ~ ~ ~ Items[{Slot:16b}].Count byte 1 run scoreboard players get #item_1 sandwiches

data modify block ~ ~ ~ Items[{Slot:16b}].tag merge value {GUI_Item:1b}
execute unless score #sg.name_level sandwiches matches 2.. run data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Name set value '{"italic":false,"translate":"item.sandwiches_galore.sandwich.apple"}'
data modify block ~ ~ ~ Items[{Slot:16b}].tag.display.Lore prepend value '[{"text":"- ","color":"gray","italic":false},{"translate":"item.minecraft.apple"}]'