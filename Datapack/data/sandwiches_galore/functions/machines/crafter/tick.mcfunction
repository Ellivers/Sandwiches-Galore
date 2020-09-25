replaceitem entity @s armor.chest minecraft:air
data modify entity @s ArmorItems[2] set from block ~ ~ ~ Items[{Slot:15b}]

execute if data block ~.01 ~ ~ Items[{Slot:16b}] run function sandwiches_galore:machines/slots/16
execute if data block ~.01 ~ ~ Items[{Slot:13b}] run function sandwiches_galore:machines/slots/13
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

execute if predicate sandwiches_galore:crafter/craftable if entity @s[tag=previewing] if predicate sandwiches_galore:crafter/no_preview_item run function sandwiches_galore:machines/crafter/output
execute if predicate sandwiches_galore:crafter/craftable if predicate sandwiches_galore:crafter/previewable run function sandwiches_galore:machines/crafter/preview
execute unless predicate sandwiches_galore:crafter/craftable if entity @s[tag=previewing] run function sandwiches_galore:machines/crafter/remove_preview