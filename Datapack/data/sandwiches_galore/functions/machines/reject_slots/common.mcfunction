scoreboard players operation #temp_id sg.dummy = @s sg.gui_id
scoreboard players set #temp_rej sg.dummy 0
execute store result score #temp_rej sg.dummy as @a if score @s sg.gui_id = #temp_id sg.dummy at @s run loot spawn ~ ~ ~ loot sandwiches_galore:technical/magic_item
execute if score #temp_rej sg.dummy matches 0 run loot spawn ~ ~ ~ loot sandwiches_galore:technical/magic_item

data modify entity @e[type=minecraft:item,nbt={Item:{tag:{SG:{Special:1b}}}},limit=1] PickupDelay set value 0s
data modify entity @e[type=minecraft:item,nbt={Item:{tag:{SG:{Special:1b}}}},limit=1] Item set from storage sandwiches:galore Item1
