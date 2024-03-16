execute if data block ~ ~ ~ Items[{Slot:0b}] run function sandwiches_galore:machines/slots/0_sandwich_table/main
data modify storage sandwiches:temp root.items set from block ~ ~ ~ Items

execute if data storage sandwiches:temp root.items[{Slot:2b}] run function sandwiches_galore:machines/reject_slots/2
execute if data storage sandwiches:temp root.items[{Slot:15b}] run function sandwiches_galore:machines/reject_slots/15
execute if data storage sandwiches:temp root.items[{Slot:11b}] run function sandwiches_galore:machines/reject_slots/11
execute if data storage sandwiches:temp root.items[{Slot:20b}] run function sandwiches_galore:machines/reject_slots/20
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
execute if entity @s[tag=!sg.previewing] if data storage sandwiches:temp root.items[{Slot:16b}] run function sandwiches_galore:machines/reject_slots/16

# Check for valid recipes
scoreboard players set #temp sg.dummy 0
execute if score #temp sg.dummy matches 0 if data storage sandwiches:galore {Items:[{Slot:10b,tag:{SG:{WheatBreadSlice:1b}}},{Slot:13b,tag:{SG:{WheatBreadSlice:1b}}}]} run scoreboard players set #temp sg.dummy 1
execute if score #temp sg.dummy matches 0 if data storage sandwiches:galore {Items:[{Slot:10b,tag:{SG:{BuckwheatBreadSlice:1b}}},{Slot:13b,tag:{SG:{BuckwheatBreadSlice:1b}}}]} run scoreboard players set #temp sg.dummy 1
execute if score #temp sg.dummy matches 0 if data storage sandwiches:galore {Items:[{Slot:10b,tag:{SG:{CornbreadSlice:1b}}},{Slot:13b,tag:{SG:{CornbreadSlice:1b}}}]} run scoreboard players set #temp sg.dummy 1
execute if score #temp sg.dummy matches 0 if data storage sandwiches:galore {Items:[{Slot:10b,tag:{SG:{NetherSproutBreadSlice:1b}}},{Slot:13b,tag:{SG:{NetherSproutBreadSlice:1b}}}]} run scoreboard players set #temp sg.dummy 1
execute if score #temp sg.dummy matches 0 if data storage sandwiches:galore {Items:[{Slot:10b,tag:{SG:{Sandwich:1b}}},{Slot:13b}]} run scoreboard players set #temp sg.dummy 1
execute if score #temp sg.dummy matches 0 run function #sandwiches_galore:sandwich_table/validate_recipe

# Output item
execute if score #temp sg.dummy matches 1 if entity @s[tag=sg.previewing] unless data storage sandwiches:temp root.items[{Slot:16b}] run function sandwiches_galore:machines/sandwich_table/output
# Check for valid recipes
execute if score #temp sg.dummy matches 1 if predicate sandwiches_galore:sandwich_table/can_preview run function sandwiches_galore:machines/sandwich_table/check
# Remove preview if there's no valid recipe
execute if score #temp sg.dummy matches 0 if entity @s[tag=sg.previewing] run function sandwiches_galore:machines/sandwich_table/preview/remove

execute unless block ~ ~ ~ minecraft:barrel[open=true] run function sandwiches_galore:machines/close_gui
