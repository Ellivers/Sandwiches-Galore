function sandwiches_galore:machines/crafter/output/get_item_counts

scoreboard players set #lowest sandwiches 214748364
execute if data storage sandwiches_galore:crafter Items[{Slot:1b}] run scoreboard players operation #lowest sandwiches < #slot_1 sg.item_count
execute if data storage sandwiches_galore:crafter Items[{Slot:2b}] run scoreboard players operation #lowest sandwiches < #slot_2 sg.item_count
execute if data storage sandwiches_galore:crafter Items[{Slot:3b}] run scoreboard players operation #lowest sandwiches < #slot_3 sg.item_count

execute if data storage sandwiches_galore:crafter Items[{Slot:10b}] run scoreboard players operation #lowest sandwiches < #slot_10 sg.item_count
execute if data storage sandwiches_galore:crafter Items[{Slot:11b}] run scoreboard players operation #lowest sandwiches < #slot_11 sg.item_count
execute if data storage sandwiches_galore:crafter Items[{Slot:12b}] run scoreboard players operation #lowest sandwiches < #slot_12 sg.item_count

execute if data storage sandwiches_galore:crafter Items[{Slot:19b}] run scoreboard players operation #lowest sandwiches < #slot_19 sg.item_count
execute if data storage sandwiches_galore:crafter Items[{Slot:20b}] run scoreboard players operation #lowest sandwiches < #slot_20 sg.item_count
execute if data storage sandwiches_galore:crafter Items[{Slot:21b}] run scoreboard players operation #lowest sandwiches < #slot_21 sg.item_count