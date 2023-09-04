# Merge the two item stacks

execute store result score #slot_11 sandwiches run data get storage sandwiches:galore Items[{Slot:11b}].Count
execute store result score #slot_0 sandwiches run data get storage sandwiches:galore Items[{Slot:0b}].Count
scoreboard players operation #tempcount sandwiches = #slot_11 sandwiches
scoreboard players operation #tempcount sandwiches += #slot_0 sandwiches

# Only merge until it reaches 64 items
execute if score #tempcount sandwiches matches 65.. run data modify block ~ ~ ~ Items[{Slot:11b}].Count set value 64b
scoreboard players operation #tempcount2 sandwiches = #tempcount sandwiches
scoreboard players remove #tempcount2 sandwiches 64
execute if score #tempcount sandwiches matches 65.. store result block ~ ~ ~ Items[{Slot:0b}].Count byte 1 run scoreboard players get #tempcount2 sandwiches

execute unless score #tempcount sandwiches matches 65.. store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players get #tempcount sandwiches
execute unless score #tempcount sandwiches matches 65.. run item replace block ~ ~ ~ container.0 with minecraft:air

execute if score #tempcount sandwiches matches 65.. run function sandwiches_galore:machines/reject_slots/0
