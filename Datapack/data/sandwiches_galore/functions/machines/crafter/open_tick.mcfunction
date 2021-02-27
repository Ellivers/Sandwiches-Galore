execute if data block ~ ~ ~ Items[{Slot:0b}] run function sandwiches_galore:machines/slots/0_crafter
data modify storage sandwiches:galore Items set from block ~ ~ ~ Items

execute if data storage sandwiches:galore Items[{Slot:16b}] run function sandwiches_galore:machines/reject_slots/16
execute if data storage sandwiches:galore Items[{Slot:13b}] run function sandwiches_galore:machines/reject_slots/13
execute if data storage sandwiches:galore Items[{Slot:4b}] run function sandwiches_galore:machines/reject_slots/4
execute if data storage sandwiches:galore Items[{Slot:5b}] run function sandwiches_galore:machines/reject_slots/5
execute if data storage sandwiches:galore Items[{Slot:6b}] run function sandwiches_galore:machines/reject_slots/6
execute if data storage sandwiches:galore Items[{Slot:7b}] run function sandwiches_galore:machines/reject_slots/7
execute if data storage sandwiches:galore Items[{Slot:8b}] run function sandwiches_galore:machines/reject_slots/8
execute if data storage sandwiches:galore Items[{Slot:9b}] run function sandwiches_galore:machines/reject_slots/9
execute if data storage sandwiches:galore Items[{Slot:14b}] run function sandwiches_galore:machines/reject_slots/14
execute if data storage sandwiches:galore Items[{Slot:17b}] run function sandwiches_galore:machines/reject_slots/17
execute if data storage sandwiches:galore Items[{Slot:18b}] run function sandwiches_galore:machines/reject_slots/18
execute if data storage sandwiches:galore Items[{Slot:22b}] run function sandwiches_galore:machines/reject_slots/22
execute if data storage sandwiches:galore Items[{Slot:23b}] run function sandwiches_galore:machines/reject_slots/23
execute if data storage sandwiches:galore Items[{Slot:24b}] run function sandwiches_galore:machines/reject_slots/24
execute if data storage sandwiches:galore Items[{Slot:25b}] run function sandwiches_galore:machines/reject_slots/25
execute if data storage sandwiches:galore Items[{Slot:26b}] run function sandwiches_galore:machines/reject_slots/26
execute if entity @s[tag=!sg.previewing] if data storage sandwiches:galore Items[{Slot:15b}] run function sandwiches_galore:machines/reject_slots/15

# Check for valid recipes
scoreboard players set #temp sandwiches 0
execute if predicate sandwiches_galore:crafter/craftable run scoreboard players set #temp sandwiches 1
execute if score #temp sandwiches matches 0 run function #sandwiches_galore:crafter/validate_recipe

# Craft the recipe
execute if score #temp sandwiches matches 1 if entity @s[tag=sg.previewing] unless data storage sandwiches:galore Items[{Slot:15b,tag:{SG:{GUI_Item:1b}}}] run function sandwiches_galore:machines/crafter/output/output
# Check for valid recipes
execute if score #temp sandwiches matches 1 if predicate sandwiches_galore:crafter/previewable run function sandwiches_galore:machines/crafter/preview
# Remove preview item if there's no valid recipe
execute if score #temp sandwiches matches 0 if entity @s[tag=sg.previewing] run function sandwiches_galore:machines/crafter/remove_preview

execute unless block ~ ~ ~ minecraft:barrel[open=true] run function sandwiches_galore:machines/close_gui
