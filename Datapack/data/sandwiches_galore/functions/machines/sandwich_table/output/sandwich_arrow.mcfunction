data modify entity @s Item.tag.display.Name set value '{"italic":false,"translate":"item.sandwiches_galore.sandwich_arrow"}'
data modify entity @s Item.id set value "minecraft:arrow"

execute store result score #sg.custom_model_data sandwiches run data get storage sandwiches:galore Items[{Slot:10b}].tag.CustomModelData
execute if score #sg.custom_model_data sandwiches matches 6710006.. run scoreboard players remove #sg.custom_model_data sandwiches 5
execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get #sg.custom_model_data sandwiches

data remove entity @s Item.tag.SG.Sandwich
data modify entity @s Item.tag.SG merge value {SandwichArrow:1b}