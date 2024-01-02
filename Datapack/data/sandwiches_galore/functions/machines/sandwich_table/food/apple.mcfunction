execute unless score #sg.name_level sg.dummy matches 2.. run data modify entity @s Item.tag.SG.NameLevel set value 2
execute unless score #sg.food_level sg.dummy matches 5.. run data modify entity @s Item.tag.SG.FoodLevel set value 5
execute unless score #sg.name_level sg.dummy matches 2.. run data modify entity @s Item.tag.display.Name set value '{"italic":false,"translate":"item.sandwiches_galore.sandwich.apple"}'
data modify entity @s Item.tag.display.Lore prepend value '[{"text":"- ","color":"gray","italic":false},{"translate":"item.minecraft.apple"}]'
data modify entity @s Item.tag.SG.Items append value {Name:"apple"}
execute unless score #sg.food_level sg.dummy matches 5.. run data modify entity @s Item.id set value "minecraft:cooked_cod"