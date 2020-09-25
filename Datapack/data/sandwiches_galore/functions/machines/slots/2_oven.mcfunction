data modify entity @s ArmorItems[2] set from block ~.01 ~ ~ Items[{Slot:2b}]
data modify entity @s ArmorItems[1] set from block ~.01 ~ ~ Items[{Slot:20b}]
execute unless score @s sg.heat matches 1.. if predicate sandwiches_galore:gui/bakeable_items if predicate sandwiches_galore:gui/fuel_items2 if data block ~.01 ~ ~ Items[{Slot:20b}] run function sandwiches_galore:machines/oven/bake_start