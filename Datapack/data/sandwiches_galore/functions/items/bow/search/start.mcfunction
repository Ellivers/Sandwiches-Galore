data modify storage sandwiches:temp root.items set from entity @s Inventory
execute store result score #length_new sg.dummy run data get storage sandwiches:temp root.items
#data modify storage sandwiches:temp root.items2 set value []
#data modify storage sandwiches:temp root.items2 set from entity @s[predicate=sandwiches_galore:holding/bow_offhand] Inventory[{Slot:-106b}].tag.SG.SandwichArrows
#data modify storage sandwiches:temp root.items2 set from entity @s[predicate=sandwiches_galore:holding/bow_mainhand] SelectedItem.tag.SG.SandwichArrows
#execute if score #shot sg.dummy matches 1 run execute store result score #length_old sg.dummy run data get storage sandwiches:temp root.items2

scoreboard players set #recurse sg.dummy 0
scoreboard players set #different sg.dummy 0
scoreboard players set #found sg.dummy 0
scoreboard players set #stored sg.dummy 0
function sandwiches_galore:items/bow/search/loop
