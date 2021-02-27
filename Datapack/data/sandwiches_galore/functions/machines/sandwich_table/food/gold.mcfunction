execute unless score #sg.name_level sandwiches matches 100.. run data modify entity @s Item.tag.NameLevel set value 100
execute unless score #sg.name_level sandwiches matches 100.. run data modify entity @s Item.tag.display.Name set value '{"italic":false,"translate":"item.sandwiches_galore.sandwich.golden"}'
data modify entity @s Item.tag.display.Lore prepend value '[{"text":"- ","color":"gray","italic":false},{"translate":"item.minecraft.gold_ingot"}]'
data modify entity @s Item.tag.Items append value {Name:"gold?"}

execute unless data storage sandwiches:galore Items[{Slot:10b}].tag.Items[{Name:"pufferfish"}] run data modify entity @s Item.tag.CustomModelData set value 6710005
execute if data storage sandwiches:galore Items[{Slot:10b}].tag.Items[{Name:"pufferfish"}] run data modify entity @s Item.tag.CustomModelData set value 6710010