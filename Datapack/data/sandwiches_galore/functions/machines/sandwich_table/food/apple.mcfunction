execute unless score #sg.name_level sandwiches matches 2.. run data modify entity @s Item.tag.NameLevel set value 2
execute unless score #sg.food_level sandwiches matches 5.. run data modify entity @s Item.tag.FoodLevel set value 5
execute unless score #sg.name_level sandwiches matches 2.. run data modify entity @s Item.tag.display.Name set value '{"italic":false,"translate":"item.sandwiches_galore.sandwich.apple"}'
data modify entity @s Item.tag.display.Lore prepend value '[{"text":"- ","color":"gray","italic":false},{"translate":"item.minecraft.apple"}]'
data modify entity @s Item.tag.Items append value {Name:"apple"}
execute unless score #sg.food_level sandwiches matches 5.. run data modify entity @s Item.id set value "minecraft:cooked_cod"