# Merge the two item stacks

execute store result score #slot_20 sg.dummy run data get storage sandwiches:temp root.items[{Slot:20b}].Count
execute store result score #slot_0 sg.dummy run data get storage sandwiches:temp root.items[{Slot:0b}].Count
scoreboard players operation #tempcount sg.dummy = #slot_20 sg.dummy
scoreboard players operation #tempcount sg.dummy += #slot_0 sg.dummy

# Only merge until it reaches 64 items
execute if score #tempcount sg.dummy matches 65.. run data modify block ~ ~ ~ Items[{Slot:20b}].Count set value 64b
scoreboard players operation #tempcount2 sg.dummy = #tempcount sg.dummy
scoreboard players remove #tempcount2 sg.dummy 64
execute if score #tempcount sg.dummy matches 65.. store result block ~ ~ ~ Items[{Slot:0b}].Count byte 1 run scoreboard players get #tempcount2 sg.dummy

execute unless score #tempcount sg.dummy matches 65.. store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run scoreboard players get #tempcount sg.dummy
execute unless score #tempcount sg.dummy matches 65.. run item replace block ~ ~ ~ container.0 with minecraft:air

execute if score #tempcount sg.dummy matches 65.. run scoreboard players set #temp2 sg.dummy 0
