scoreboard players operation #temp_id sandwiches = @s sg.gui_id
execute as @a if score @s sg.gui_id = #temp_id sandwiches run tag @s add sg.tag

execute unless entity @a[tag=sg.tag,nbt={Inventory:[{tag:{SG:{GUI_Item:1b}}}]}] run function sandwiches_galore:machines/crafter/output/output.once
execute if entity @a[tag=sg.tag,nbt={Inventory:[{tag:{SG:{GUI_Item:1b}}}]}] run function sandwiches_galore:machines/crafter/output/output.all