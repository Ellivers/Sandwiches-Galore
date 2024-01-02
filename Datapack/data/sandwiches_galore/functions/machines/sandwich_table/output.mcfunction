tag @s remove sg.previewing

scoreboard players operation #temp_id sg.dummy = @s sg.gui_id
scoreboard players set #temp sg.dummy 0
scoreboard players reset @a sg.dummy
execute as @a if score @s sg.gui_id = #temp_id sg.dummy store result score @s sg.dummy store result score #temp sg.dummy run clear @s #sandwiches_galore:all{SG:{GUI_Item:1b}}
execute if score #temp sg.dummy matches 1.. run tag @a[scores={sg.dummy=1..}] add sg.tag
execute unless score #temp sg.dummy matches 1.. as @a if score @s sg.gui_id = #temp_id sg.dummy run tag @s add sg.tag

kill @e[type=minecraft:item,nbt={Item:{tag:{SG:{GUI_Item:1b}}}}]

execute store result score #item_1 sg.dummy run data get storage sandwiches:galore Items[{Slot:10b}].Count
execute store result score #item_2 sg.dummy run data get storage sandwiches:galore Items[{Slot:13b}].Count
execute if score #item_2 sg.dummy = #item_1 sg.dummy run function sandwiches_galore:machines/sandwich_table/output/subtract_both
execute if score #item_1 sg.dummy < #item_2 sg.dummy run function sandwiches_galore:machines/sandwich_table/output/subtract2
execute if score #item_2 sg.dummy < #item_1 sg.dummy run function sandwiches_galore:machines/sandwich_table/output/subtract1

execute if entity @s[tag=sg.preview_wheat_base] at @a[tag=sg.tag,limit=1] run function sandwiches_galore:machines/sandwich_table/output/wheat_base
execute if entity @s[tag=sg.preview_nether_sprout_base] at @a[tag=sg.tag,limit=1] run function sandwiches_galore:machines/sandwich_table/output/nether_sprout_base
execute if entity @s[tag=sg.preview_buckwheat_base] at @a[tag=sg.tag,limit=1] run function sandwiches_galore:machines/sandwich_table/output/buckwheat_base
execute if entity @s[tag=sg.preview_corn_base] at @a[tag=sg.tag,limit=1] run function sandwiches_galore:machines/sandwich_table/output/corn_base
execute if entity @s[tag=sg.preview_sandwich] at @a[tag=sg.tag,limit=1] run function sandwiches_galore:machines/sandwich_table/output/sandwich
function #sandwiches_galore:sandwich_table/output

tag @a remove sg.tag