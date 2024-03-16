data modify entity @s ArmorItems[2] set value {}
data modify entity @s ArmorItems[2] set from storage sandwiches:temp root.items[{Slot:20b}]
execute unless predicate sandwiches_galore:oven/fuel_items run function sandwiches_galore:machines/reject_slots/20