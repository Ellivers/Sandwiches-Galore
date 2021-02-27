tag @s remove sg.previewing

scoreboard players operation #temp_id sandwiches = @s sg.gui_id
scoreboard players set #temp sandwiches 0
scoreboard players reset @a sandwiches
execute as @a if score @s sg.gui_id = #temp_id sandwiches store result score @s sandwiches store result score #temp sandwiches run clear @s #sandwiches_galore:all{SG:{GUI_Item:1b}}
execute if score #temp sandwiches matches 1.. run tag @a[scores={sandwiches=1..}] add sg.tag
execute unless score #temp sandwiches matches 1.. as @a if score @s sg.gui_id = #temp_id sandwiches run tag @s add sg.tag

kill @e[type=minecraft:item,sort=arbitrary,nbt={Item:{tag:{SG:{GUI_Item:1b}}}}]

execute store result score #item_1 sandwiches run data get storage sandwiches:galore Items[{Slot:10b}].Count
execute store result score #item_2 sandwiches run data get storage sandwiches:galore Items[{Slot:13b}].Count
execute if score #item_2 sandwiches = #item_1 sandwiches run function sandwiches_galore:machines/sandwich_table/output/subtract_both
execute if score #item_1 sandwiches < #item_2 sandwiches run function sandwiches_galore:machines/sandwich_table/output/subtract2
execute if score #item_2 sandwiches < #item_1 sandwiches run function sandwiches_galore:machines/sandwich_table/output/subtract1

execute if entity @s[tag=sg.preview_wheat_base] at @a[tag=sg.tag,limit=1] run function sandwiches_galore:machines/sandwich_table/output/wheat_base
execute if entity @s[tag=sg.preview_nether_sprout_base] at @a[tag=sg.tag,limit=1] run function sandwiches_galore:machines/sandwich_table/output/nether_sprout_base
execute if entity @s[tag=sg.preview_buckwheat_base] at @a[tag=sg.tag,limit=1] run function sandwiches_galore:machines/sandwich_table/output/buckwheat_base
execute if entity @s[tag=sg.preview_corn_base] at @a[tag=sg.tag,limit=1] run function sandwiches_galore:machines/sandwich_table/output/corn_base
execute if entity @s[tag=sg.preview_sandwich] at @a[tag=sg.tag,limit=1] run function sandwiches_galore:machines/sandwich_table/output/sandwich
function #sandwiches_galore:sandwich_table/output

tag @a remove sg.tag