execute unless score #sg.name_level sg.dummy matches 10.. run data modify entity @s Item.tag.SG.NameLevel set value 10
execute unless score #sg.name_level sg.dummy matches 10.. run data modify entity @s Item.tag.display.Name set value '{"italic":false,"translate":"item.sandwiches_galore.sandwich.ender_pearl"}'
data modify entity @s Item.tag.display.Lore prepend value '[{"text":"- ","color":"gray","italic":false},{"translate":"item.minecraft.ender_pearl"}]'
data modify entity @s Item.tag.SG.Items append value {Name:"ender_pearl"}