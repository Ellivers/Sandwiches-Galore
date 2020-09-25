#execute if data block ~.01 ~ ~ Items[{Slot:4b}] run function sandwiches_galore:machines/slots/4
#execute if data block ~.01 ~ ~ Items[{Slot:5b}] run function sandwiches_galore:machines/slots/5
#execute if data block ~.01 ~ ~ Items[{Slot:6b}] run function sandwiches_galore:machines/slots/6
#execute if data block ~.01 ~ ~ Items[{Slot:7b}] run function sandwiches_galore:machines/slots/7
#execute if data block ~.01 ~ ~ Items[{Slot:8b}] run function sandwiches_galore:machines/slots/8
#execute if data block ~.01 ~ ~ Items[{Slot:9b}] run function sandwiches_galore:machines/slots/9
#execute if data block ~.01 ~ ~ Items[{Slot:14b}] run function sandwiches_galore:machines/slots/14
#execute if data block ~.01 ~ ~ Items[{Slot:17b}] run function sandwiches_galore:machines/slots/17
#execute if data block ~.01 ~ ~ Items[{Slot:18b}] run function sandwiches_galore:machines/slots/18
#execute if data block ~.01 ~ ~ Items[{Slot:22b}] run function sandwiches_galore:machines/slots/22
#execute if data block ~.01 ~ ~ Items[{Slot:23b}] run function sandwiches_galore:machines/slots/23
#execute if data block ~.01 ~ ~ Items[{Slot:24b}] run function sandwiches_galore:machines/slots/24
#execute if data block ~.01 ~ ~ Items[{Slot:25b}] run function sandwiches_galore:machines/slots/25
#execute if data block ~.01 ~ ~ Items[{Slot:26b}] run function sandwiches_galore:machines/slots/26
execute if entity @s[tag=grinder] run function sandwiches_galore:machines/grinder/tick
execute if entity @s[tag=oven] run function sandwiches_galore:machines/oven/tick
execute if entity @s[tag=sandwich_table] run function sandwiches_galore:machines/sandwich_table/tick
execute if entity @s[tag=crafter] run function sandwiches_galore:machines/crafter/tick