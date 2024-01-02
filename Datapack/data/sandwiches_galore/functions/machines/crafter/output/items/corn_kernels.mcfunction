loot spawn ~ ~ ~ loot sandwiches_galore:items/corn_kernels

scoreboard players operation #lowest sg.dummy *= #3 sg.dummy
scoreboard players operation #lowest2 sg.dummy = #lowest sg.dummy
execute if score #lowest sg.dummy matches 128.. run scoreboard players set #lowest2 sg.dummy 127

execute store result entity @e[type=minecraft:item,sort=nearest,limit=1] Item.Count byte 1 run scoreboard players get #lowest2 sg.dummy
data modify entity @e[type=minecraft:item,sort=nearest,limit=1] PickupDelay set value 0s

execute if score #lowest sg.dummy matches 128.. run function sandwiches_galore:machines/crafter/output/items/corn_kernels2