scoreboard players reset @s sg.process
scoreboard players reset @s sg.process_timer

execute if data block ~ ~ ~ Items[{Slot:13b}] run function sandwiches_galore:machines/slots/13_grinder
data modify entity @s item.tag.CustomModelData set value 6710011

stopsound @a[distance=..16] block sandwiches_galore:block.grinder.grind
