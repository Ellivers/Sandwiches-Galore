data modify entity @s ArmorItems[1] set value {}
data modify entity @s ArmorItems[0] set value {}
data modify entity @s ArmorItems[2] set value {}
data modify entity @s ArmorItems[1] set from block ~.01 ~ ~ Items[{Slot:10b}]
data modify entity @s ArmorItems[0] set from block ~.01 ~ ~ Items[{Slot:13b}]
data modify entity @s ArmorItems[2] set from block ~.01 ~ ~ Items[{Slot:16b}]
execute if entity @s[tag=has_output] unless data block ~.01 ~ ~ Items[{Slot:16b,tag:{GUI_Item:1b}}] run function sandwiches_galore:machines/reject_slots/16_sandwich_table
execute if entity @s[tag=has_output] if predicate sandwiches_galore:sandwich_table/sandwichable unless data block ~.01 ~ ~ Items[{Slot:16b}] run function sandwiches_galore:machines/sandwich_table/output/output
execute if entity @s[tag=has_output] if predicate sandwiches_galore:sandwich_table/not_sandwichable run function sandwiches_galore:machines/sandwich_table/preview/remove
execute if predicate sandwiches_galore:sandwich_table/sandwichable if predicate sandwiches_galore:sandwich_table/can_preview run function sandwiches_galore:machines/sandwich_table/check

execute if data block ~.01 ~ ~ Items[{Slot:2b}] run function sandwiches_galore:machines/slots/2
execute if data block ~.01 ~ ~ Items[{Slot:15b}] run function sandwiches_galore:machines/slots/15
execute if data block ~.01 ~ ~ Items[{Slot:11b}] run function sandwiches_galore:machines/slots/11
execute if data block ~.01 ~ ~ Items[{Slot:20b}] run function sandwiches_galore:machines/slots/20
execute if data block ~.01 ~ ~ Items[{Slot:1b}] run function sandwiches_galore:machines/slots/1
execute if data block ~.01 ~ ~ Items[{Slot:3b}] run function sandwiches_galore:machines/slots/3
execute if data block ~.01 ~ ~ Items[{Slot:12b}] run function sandwiches_galore:machines/slots/12
execute if data block ~.01 ~ ~ Items[{Slot:19b}] run function sandwiches_galore:machines/slots/19
execute if data block ~.01 ~ ~ Items[{Slot:21b}] run function sandwiches_galore:machines/slots/21
execute if data block ~.01 ~ ~ Items[{Slot:4b}] run function sandwiches_galore:machines/slots/4
execute if data block ~.01 ~ ~ Items[{Slot:5b}] run function sandwiches_galore:machines/slots/5
execute if data block ~.01 ~ ~ Items[{Slot:6b}] run function sandwiches_galore:machines/slots/6
execute if data block ~.01 ~ ~ Items[{Slot:7b}] run function sandwiches_galore:machines/slots/7
execute if data block ~.01 ~ ~ Items[{Slot:8b}] run function sandwiches_galore:machines/slots/8
execute if data block ~.01 ~ ~ Items[{Slot:9b}] run function sandwiches_galore:machines/slots/9
execute if data block ~.01 ~ ~ Items[{Slot:14b}] run function sandwiches_galore:machines/slots/14
execute if data block ~.01 ~ ~ Items[{Slot:17b}] run function sandwiches_galore:machines/slots/17
execute if data block ~.01 ~ ~ Items[{Slot:18b}] run function sandwiches_galore:machines/slots/18
execute if data block ~.01 ~ ~ Items[{Slot:22b}] run function sandwiches_galore:machines/slots/22
execute if data block ~.01 ~ ~ Items[{Slot:23b}] run function sandwiches_galore:machines/slots/23
execute if data block ~.01 ~ ~ Items[{Slot:24b}] run function sandwiches_galore:machines/slots/24
execute if data block ~.01 ~ ~ Items[{Slot:25b}] run function sandwiches_galore:machines/slots/25
execute if data block ~.01 ~ ~ Items[{Slot:26b}] run function sandwiches_galore:machines/slots/26