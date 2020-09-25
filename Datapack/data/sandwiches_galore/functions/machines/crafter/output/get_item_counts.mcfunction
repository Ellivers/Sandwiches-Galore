#define storage sandwiches_galore:crafter

data modify storage sandwiches_galore:crafter Items set from block ~ ~ ~ Items

scoreboard players reset * sg.item_count

execute if data storage sandwiches_galore:crafter Items[{Slot:1b}] store result score #slot_1 sg.item_count run data get storage sandwiches_galore:crafter Items[{Slot:1b}].Count
execute if data storage sandwiches_galore:crafter Items[{Slot:2b}] store result score #slot_2 sg.item_count run data get storage sandwiches_galore:crafter Items[{Slot:2b}].Count
execute if data storage sandwiches_galore:crafter Items[{Slot:3b}] store result score #slot_3 sg.item_count run data get storage sandwiches_galore:crafter Items[{Slot:3b}].Count

execute if data storage sandwiches_galore:crafter Items[{Slot:10b}] store result score #slot_10 sg.item_count run data get storage sandwiches_galore:crafter Items[{Slot:10b}].Count
execute if data storage sandwiches_galore:crafter Items[{Slot:11b}] store result score #slot_11 sg.item_count run data get storage sandwiches_galore:crafter Items[{Slot:11b}].Count
execute if data storage sandwiches_galore:crafter Items[{Slot:12b}] store result score #slot_12 sg.item_count run data get storage sandwiches_galore:crafter Items[{Slot:12b}].Count

execute if data storage sandwiches_galore:crafter Items[{Slot:19b}] store result score #slot_19 sg.item_count run data get storage sandwiches_galore:crafter Items[{Slot:19b}].Count
execute if data storage sandwiches_galore:crafter Items[{Slot:20b}] store result score #slot_20 sg.item_count run data get storage sandwiches_galore:crafter Items[{Slot:20b}].Count
execute if data storage sandwiches_galore:crafter Items[{Slot:21b}] store result score #slot_21 sg.item_count run data get storage sandwiches_galore:crafter Items[{Slot:21b}].Count