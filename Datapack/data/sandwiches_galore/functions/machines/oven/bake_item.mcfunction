data modify block ~ ~ ~ Items[{Slot:13b,tag:{SG:{GUI_Item:1b}}}].tag.CustomModelData set value 6710024
#execute if predicate sandwiches_galore:gui/count_64 run data modify block ~ ~ ~ Items[{Slot:13b}].CustomModelData set value 6710023

function sandwiches_galore:machines/oven/validate_item

scoreboard players set #temp2 sg.dummy 0
execute unless data storage sandwiches:galore Items[{Slot:15b}] run scoreboard players set #temp2 sg.dummy 1
execute if score #temp2 sg.dummy matches 0 if data storage sandwiches:galore Items[{Slot:15b,tag:{SG:{Bread:1b}}}] run scoreboard players set #temp2 sg.dummy 1
execute if score #temp2 sg.dummy matches 0 if data storage sandwiches:galore Items[{Slot:15b,tag:{SG:{DriedNetherSprouts:1b}}}] run scoreboard players set #temp2 sg.dummy 1
execute if score #temp2 sg.dummy matches 0 run function #sandwiches_galore:oven/check_output_slot

execute if score #temp sg.dummy matches 1 if score #temp2 sg.dummy matches 1 unless data storage sandwiches:galore Items[{Slot:15b,Count:64b}] store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run data get storage sandwiches:galore Items[{Slot:2b}].Count 0.9999999999
execute if data storage sandwiches:galore Items[{Slot:2b,tag:{SG:{BuckwheatDough:1b}}}] if score #temp2 sg.dummy matches 1 run function sandwiches_galore:machines/oven/bake/buckwheat
execute if data storage sandwiches:galore Items[{Slot:2b,tag:{SG:{WheatDough:1b}}}] if score #temp2 sg.dummy matches 1 run function sandwiches_galore:machines/oven/bake/wheat
execute if data storage sandwiches:galore Items[{Slot:2b,tag:{SG:{NetherSproutDough:1b}}}] if score #temp2 sg.dummy matches 1 run function sandwiches_galore:machines/oven/bake/nether_sprout
execute if data storage sandwiches:galore Items[{Slot:2b,tag:{SG:{CornDough:1b}}}] if score #temp2 sg.dummy matches 1 run function sandwiches_galore:machines/oven/bake/corn
execute if data storage sandwiches:galore Items[{Slot:2b,id:"minecraft:nether_sprouts"}] if score #temp2 sg.dummy matches 1 run function sandwiches_galore:machines/oven/bake/dried_nether_sprouts
function #sandwiches_galore:oven/output
