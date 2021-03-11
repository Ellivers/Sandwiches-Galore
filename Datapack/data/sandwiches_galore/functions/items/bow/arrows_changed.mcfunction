scoreboard players set #temp sandwiches 0
execute if entity @s[predicate=sandwiches_galore:holding/bow_offhand,predicate=!sandwiches_galore:holding/1_durability_offhand,predicate=sandwiches_galore:holding/break_offhand] run scoreboard players set #temp sandwiches 1
execute if entity @s[predicate=sandwiches_galore:holding/bow_mainhand,predicate=!sandwiches_galore:holding/1_durability_mainhand,predicate=sandwiches_galore:holding/break_mainhand] run scoreboard players set #temp sandwiches 2
execute if score #temp sandwiches matches 1 run data modify storage sandwiches:galore Item1 set from entity @s Inventory[{Slot:-106b}]
execute if score #temp sandwiches matches 2 run data modify storage sandwiches:galore Item1 set from entity @s SelectedItem
execute unless score #temp sandwiches matches 0 run data modify storage sandwiches:galore Item1.tag.HideFlags set from storage sandwiches:galore Item1.tag.SG.Backup
execute unless score #temp sandwiches matches 0 run data remove storage sandwiches:galore Item1.tag.Unbreakable
execute unless score #temp sandwiches matches 0 run data remove storage sandwiches:galore Item1.tag.SG.Break
execute unless score #temp sandwiches matches 0 run data remove storage sandwiches:galore Item1.tag.SG.Backup
data modify storage sandwiches:galore Item1.Slot set value 0b
execute unless score #temp sandwiches matches 0 run data modify block -30000000 0 8020 Items[0] set from storage sandwiches:galore Item1
execute if score #temp sandwiches matches 1 run loot replace entity @s weapon.offhand 1 mine -30000000 0 8020 air{drop_contents:1b}
execute if score #temp sandwiches matches 2 run loot replace entity @s weapon.mainhand 1 mine -30000000 0 8020 air{drop_contents:1b}

scoreboard players set #temp sandwiches 0
execute if entity @s[predicate=sandwiches_galore:holding/bow_offhand,predicate=sandwiches_galore:holding/1_durability_offhand,nbt=!{Inventory:[{Slot:-106b,tag:{Unbreakable:1b}}]}] run scoreboard players set #temp sandwiches 1
execute if entity @s[predicate=sandwiches_galore:holding/bow_mainhand,predicate=sandwiches_galore:holding/1_durability_mainhand,nbt=!{SelectedItem:{tag:{Unbreakable:1b}}}] run scoreboard players set #temp sandwiches 2
execute if score #temp sandwiches matches 1 run data modify storage sandwiches:galore Item1 set from entity @s Inventory[{Slot:-106b}]
execute if score #temp sandwiches matches 2 run data modify storage sandwiches:galore Item1 set from entity @s SelectedItem
execute unless score #temp sandwiches matches 0 run data modify storage sandwiches:galore Item1.tag.SG.Backup set from storage sandwiches:galore Item1
execute unless score #temp sandwiches matches 0 run data modify storage sandwiches:galore Item1.tag.Unbreakable set value 1b
execute unless score #temp sandwiches matches 0 run data modify storage sandwiches:galore Item1.tag.HideFlags set value 4
execute unless score #temp sandwiches matches 0 run data modify storage sandwiches:galore Item1.tag.SG.Break set value 1b
data modify storage sandwiches:galore Item1.Slot set value 0b
execute unless score #temp sandwiches matches 0 run data modify block -30000000 0 8020 Items[0] set from storage sandwiches:galore Item1
execute if score #temp sandwiches matches 1 run loot replace entity @s weapon.offhand 1 mine -30000000 0 8020 air{drop_contents:1b}
execute if score #temp sandwiches matches 2 run loot replace entity @s weapon.mainhand 1 mine -30000000 0 8020 air{drop_contents:1b}

execute store result score #temp sandwiches run clear @s arrow{SG:{SandwichArrow:1b}} 0

scoreboard players set #shot sandwiches 0
execute if score #temp sandwiches < @s sg.process if score @s sg.use_bow matches 1.. run scoreboard players set #shot sandwiches 1

function sandwiches_galore:items/bow/search/start

# Reusing an objective
scoreboard players operation @s sg.process = #temp sandwiches

scoreboard players reset @s sg.use_bow
schedule function sandwiches_galore:items/bow/scheduled 1t
