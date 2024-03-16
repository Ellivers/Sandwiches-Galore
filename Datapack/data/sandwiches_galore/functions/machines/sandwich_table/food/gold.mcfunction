execute unless score #sg.name_level sg.dummy matches 100.. run data modify entity @s Item.tag.SG.NameLevel set value 100
execute unless score #sg.name_level sg.dummy matches 100.. run data modify entity @s Item.tag.display.Name set value '{"italic":false,"translate":"item.sandwiches_galore.sandwich.golden"}'
data modify entity @s Item.tag.display.Lore prepend value '[{"text":"- ","color":"gray","italic":false},{"translate":"item.minecraft.gold_ingot"}]'
data modify entity @s Item.tag.SG.Items append value {Name:"gold?"}

execute unless data storage sandwiches:temp root.items[{Slot:10b}].tag.SG.Items[{Name:"pufferfish"}] run data modify entity @s Item.tag.CustomModelData set value 6710005
execute if data storage sandwiches:temp root.items[{Slot:10b}].tag.SG.Items[{Name:"pufferfish"}] run data modify entity @s Item.tag.CustomModelData set value 6710010