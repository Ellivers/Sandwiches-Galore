data modify block ~ ~ ~ Items[{Slot:13b,tag:{GUI_Item:1b}}].tag.CustomModelData set value 6710024
#define storage sandwiches:oven_gui
data modify storage sandwiches:oven_gui Items set from block ~ ~ ~ Items
data modify entity @s ArmorItems[0] set value {}
data modify entity @s ArmorItems[0] set from storage sandwiches:oven_gui Items[{Slot:15b}]
#execute if predicate sandwiches_galore:gui/count_64 run data modify block ~ ~ ~ Items[{Slot:13b}].CustomModelData set value 6710023
execute if predicate sandwiches_galore:gui/bakeable_items2 unless data storage sandwiches:oven_gui Items[{Slot:2b,Count:1b}] if predicate sandwiches_galore:gui/is_bread unless predicate sandwiches_galore:gui/count_64 store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run data get storage sandwiches:oven_gui Items[{Slot:2b}].Count 0.9999999999
execute if predicate sandwiches_galore:gui/bakeable_items2 if data storage sandwiches:oven_gui Items[{Slot:2b,Count:1b}] if predicate sandwiches_galore:gui/is_bread unless predicate sandwiches_galore:gui/count_64 run data remove block ~ ~ ~ Items[{Slot:2b}]
execute if data storage sandwiches:oven_gui Items[{Slot:2b,tag:{BuckwheatDough:1b}}] if predicate sandwiches_galore:gui/is_bread run function sandwiches_galore:machines/oven/bake/buckwheat
execute if data storage sandwiches:oven_gui Items[{Slot:2b,tag:{WheatDough:1b}}] if predicate sandwiches_galore:gui/is_bread run function sandwiches_galore:machines/oven/bake/wheat
execute if data storage sandwiches:oven_gui Items[{Slot:2b,tag:{NetherSproutDough:1b}}] if predicate sandwiches_galore:gui/is_bread run function sandwiches_galore:machines/oven/bake/nether_sprout
execute if data storage sandwiches:oven_gui Items[{Slot:2b,tag:{CornDough:1b}}] if predicate sandwiches_galore:gui/is_bread run function sandwiches_galore:machines/oven/bake/corn
execute if data storage sandwiches:oven_gui Items[{Slot:2b,id:"minecraft:nether_sprouts"}] if predicate sandwiches_galore:gui/is_bread run function sandwiches_galore:machines/oven/bake/dried_nether_sprouts