execute unless score #sg.name_level sandwiches matches 10.. run data modify entity @s Item.tag.NameLevel set value 10
execute unless score #sg.food_level sandwiches matches 18.. run data modify entity @s Item.tag.FoodLevel set value 18
execute unless score #sg.name_level sandwiches matches 10.. run data modify entity @s Item.tag.display.Name set value '{"italic":false,"translate":"item.sandwiches_galore.sandwich.cooked_mutton"}'
data modify entity @s Item.tag.display.Lore prepend value '[{"text":"- ","color":"gray","italic":false},{"translate":"item.minecraft.cooked_mutton"}]'
data modify entity @s Item.tag.Items append value {Name:"cooked_mutton"}
execute unless score #sg.food_level sandwiches matches 18.. run data modify entity @s Item.id set value "minecraft:cooked_mutton"