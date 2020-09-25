data modify block ~ ~ ~ Items[{Slot:13b,tag:{GUI_Item:1b}}].tag.CustomModelData set value 6710024
data modify storage sandwiches:grinder_gui Items set from block ~ ~ ~ Items
data modify entity @s ArmorItems[0] set value {}
data modify entity @s ArmorItems[0] set from storage sandwiches:grinder_gui Items[{Slot:15b}]
data modify entity @s ArmorItems[1] set value {}
data modify entity @s ArmorItems[1] set from storage sandwiches:grinder_gui Items[{Slot:11b}]
execute if predicate sandwiches_galore:grinder/wheat_flour_air if predicate sandwiches_galore:grinder/wheat run function sandwiches_galore:machines/grinder/grind/wheat
execute if predicate sandwiches_galore:grinder/buckwheat_flour_air if predicate sandwiches_galore:grinder/buckwheat run function sandwiches_galore:machines/grinder/grind/buckwheat
execute if predicate sandwiches_galore:grinder/nether_sprout_flour_air if predicate sandwiches_galore:grinder/dried_nether_sprouts run function sandwiches_galore:machines/grinder/grind/dried_nether_sprouts
execute if predicate sandwiches_galore:grinder/corn_flour_air if predicate sandwiches_galore:grinder/corncob run function sandwiches_galore:machines/grinder/grind/corn