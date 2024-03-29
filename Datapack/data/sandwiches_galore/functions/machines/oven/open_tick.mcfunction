execute if data storage sandwiches:temp root.items[{Slot:0b}] run function sandwiches_galore:machines/slots/0_oven/main
data modify storage sandwiches:temp root.items set from block ~ ~ ~ Items

execute if data storage sandwiches:temp root.items[{Slot:10b}] run function sandwiches_galore:machines/reject_slots/10
execute if data storage sandwiches:temp root.items[{Slot:16b}] run function sandwiches_galore:machines/reject_slots/16
execute if data storage sandwiches:temp root.items[{Slot:1b}] run function sandwiches_galore:machines/reject_slots/1
execute if data storage sandwiches:temp root.items[{Slot:3b}] run function sandwiches_galore:machines/reject_slots/3
execute if data storage sandwiches:temp root.items[{Slot:12b}] run function sandwiches_galore:machines/reject_slots/12
execute if data storage sandwiches:temp root.items[{Slot:19b}] run function sandwiches_galore:machines/reject_slots/19
execute if data storage sandwiches:temp root.items[{Slot:21b}] run function sandwiches_galore:machines/reject_slots/21
execute if data storage sandwiches:temp root.items[{Slot:4b}] run function sandwiches_galore:machines/reject_slots/4
execute if data storage sandwiches:temp root.items[{Slot:5b}] run function sandwiches_galore:machines/reject_slots/5
execute if data storage sandwiches:temp root.items[{Slot:6b}] run function sandwiches_galore:machines/reject_slots/6
execute if data storage sandwiches:temp root.items[{Slot:7b}] run function sandwiches_galore:machines/reject_slots/7
execute if data storage sandwiches:temp root.items[{Slot:8b}] run function sandwiches_galore:machines/reject_slots/8
execute if data storage sandwiches:temp root.items[{Slot:9b}] run function sandwiches_galore:machines/reject_slots/9
execute if data storage sandwiches:temp root.items[{Slot:14b}] run function sandwiches_galore:machines/reject_slots/14
execute if data storage sandwiches:temp root.items[{Slot:17b}] run function sandwiches_galore:machines/reject_slots/17
execute if data storage sandwiches:temp root.items[{Slot:18b}] run function sandwiches_galore:machines/reject_slots/18
execute if data storage sandwiches:temp root.items[{Slot:22b}] run function sandwiches_galore:machines/reject_slots/22
execute if data storage sandwiches:temp root.items[{Slot:23b}] run function sandwiches_galore:machines/reject_slots/23
execute if data storage sandwiches:temp root.items[{Slot:24b}] run function sandwiches_galore:machines/reject_slots/24
execute if data storage sandwiches:temp root.items[{Slot:25b}] run function sandwiches_galore:machines/reject_slots/25
execute if data storage sandwiches:temp root.items[{Slot:26b}] run function sandwiches_galore:machines/reject_slots/26

execute unless score @s sg.heat = @s sg.heat if data storage sandwiches:temp root.items[{Slot:11b}] run function sandwiches_galore:machines/slots/11_oven
execute unless score @s sg.process = @s sg.process if data storage sandwiches:temp root.items[{Slot:13b}] run function sandwiches_galore:machines/slots/13_oven
execute if data storage sandwiches:temp root.items[{Slot:20b}] run function sandwiches_galore:machines/slots/20_oven

execute unless block ~ ~ ~ minecraft:barrel[open=true] run function sandwiches_galore:machines/close_gui
