execute unless score #sg.name_level sandwiches matches 11.. run data modify entity @s Item.tag.SG.NameLevel set value 11
execute unless score #sg.name_level sandwiches matches 11.. run data modify entity @s Item.tag.display.Name set value '{"italic":false,"translate":"item.sandwiches_galore.sandwich.pufferfish"}'
data modify entity @s Item.tag.display.Lore prepend value '[{"text":"- ","color":"gray","italic":false},{"translate":"item.minecraft.pufferfish"}]'
data modify entity @s Item.tag.SG.Items append value {Name:"pufferfish"}
execute store result score #sg.custom_model_data sandwiches run data get storage sandwiches:galore Items[{Slot:10b}].tag.CustomModelData
scoreboard players add #sg.custom_model_data sandwiches 5
execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get #sg.custom_model_data sandwiches