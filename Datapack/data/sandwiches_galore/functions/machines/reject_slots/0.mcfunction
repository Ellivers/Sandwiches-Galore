item replace block ~ ~ ~ container.0 with minecraft:air
data modify storage sandwiches:galore Item1 set from storage sandwiches:galore Items[{Slot:0b}]
function sandwiches_galore:machines/reject_slots/return_to_sender
scoreboard players operation #temp_id sandwiches = @s sg.gui_id
execute if score #temp_rej sandwiches matches 0 store result score #temp_rej sandwiches as @a if score @s sg.gui_id = #temp_id sandwiches at @s run loot spawn ~ ~ ~ mine -30000000 0 8020 air{drop_contents:1b}
execute if score #temp_rej sandwiches matches 0 run loot spawn ~ ~ ~ mine -30000000 0 8020 air{drop_contents:1b}

data modify entity @e[type=minecraft:item,nbt={Age:0s},sort=nearest,limit=1] PickupDelay set value 0s
