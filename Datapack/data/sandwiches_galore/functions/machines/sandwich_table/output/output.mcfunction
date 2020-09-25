tag @s remove has_output
clear @p[tag=!global.ignore] #sandwiches_galore:gui_items{GUI_Item:1b}
data modify storage sandwiches:sandwich_table Items set from block ~ ~ ~ Items
execute store result score #item_1 sandwiches run data get storage sandwiches:sandwich_table Items[{Slot:10b}].Count
execute store result score #item_2 sandwiches run data get storage sandwiches:sandwich_table Items[{Slot:13b}].Count
execute if score #item_2 sandwiches = #item_1 sandwiches run function sandwiches_galore:machines/sandwich_table/output/subtract_both
execute if score #item_1 sandwiches < #item_2 sandwiches run function sandwiches_galore:machines/sandwich_table/output/subtract2
execute if score #item_2 sandwiches < #item_1 sandwiches run function sandwiches_galore:machines/sandwich_table/output/subtract1
execute if entity @s[tag=preview_wheat_base] at @p[tag=!global.ignore] run function sandwiches_galore:machines/sandwich_table/output/wheat_base
execute if entity @s[tag=preview_nether_sprout_base] at @p[tag=!global.ignore] run function sandwiches_galore:machines/sandwich_table/output/nether_sprout_base
execute if entity @s[tag=preview_buckwheat_base] at @p[tag=!global.ignore] run function sandwiches_galore:machines/sandwich_table/output/buckwheat_base
execute if entity @s[tag=preview_corn_base] at @p[tag=!global.ignore] run function sandwiches_galore:machines/sandwich_table/output/corn_base
execute if entity @s[tag=preview_sandwich] at @p[tag=!global.ignore] run function sandwiches_galore:machines/sandwich_table/output/sandwich