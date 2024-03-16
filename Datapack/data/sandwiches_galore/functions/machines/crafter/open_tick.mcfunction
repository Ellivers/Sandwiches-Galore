data modify storage sandwiches:temp root.items set from block ~ ~ ~ Items
execute if data storage sandwiches:temp root.items[{Slot:0b}] run function sandwiches_galore:machines/slots/0_crafter

scoreboard players set #rejected sg.dummy 0
execute if data storage sandwiches:temp root.items[{Slot:16b}] run function sandwiches_galore:machines/reject_slots/16
execute if data storage sandwiches:temp root.items[{Slot:13b}] run function sandwiches_galore:machines/reject_slots/13
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
execute if entity @s[tag=!sg.previewing] if data storage sandwiches:temp root.items[{Slot:15b}] run function sandwiches_galore:machines/reject_slots/15

execute if score #rejected sg.dummy matches 1 run data modify storage sandwiches:temp root.items set from block ~ ~ ~ Items

# Check for valid recipes
scoreboard players set #temp sg.dummy 0
execute if predicate sandwiches_galore:crafter/craftable run scoreboard players set #temp sg.dummy 1
execute if score #temp sg.dummy matches 0 run function #sandwiches_galore:crafter/validate_recipe

# Craft the recipe
execute if score #temp sg.dummy matches 1 if entity @s[tag=sg.previewing] unless data storage sandwiches:temp root.items[{Slot:15b,tag:{SG:{GUI_Item:1b}}}] run function sandwiches_galore:machines/crafter/output/output
# Check for valid recipes
execute if score #temp sg.dummy matches 1 if predicate sandwiches_galore:crafter/previewable run function sandwiches_galore:machines/crafter/preview
# Remove preview item if there's no valid recipe
execute if score #temp sg.dummy matches 0 if entity @s[tag=sg.previewing] run function sandwiches_galore:machines/crafter/remove_preview

execute unless block ~ ~ ~ minecraft:barrel[open=true] run function sandwiches_galore:machines/close_gui
