#execute unless data storage sandwiches:oven_gui Items[{Slot:15b,tag:{WheatBread:1b}}] unless predicate sandwiches_galore:gui/is_air run data modify block ~ ~ ~ Items[{Slot:13b}].CustomModelData set value 6710023
execute if data storage sandwiches:oven_gui Items[{Slot:15b,tag:{DriedNetherSprouts:1b}}] if predicate sandwiches_galore:gui/count2 store result block ~ ~ ~ Items[{Slot:15b}].Count byte -1 run data get storage sandwiches:oven_gui Items[{Slot:15b}].Count -1.0000000001
execute if predicate sandwiches_galore:gui/is_air run loot replace block ~ ~ ~ container.15 loot sandwiches_galore:items/dried_nether_sprouts