scoreboard players set #stored sandwiches 1

data modify storage sandwiches:galore Items2 set from entity @s[predicate=sandwiches_galore:holding/bow_offhand] Inventory[{Slot:-106b}].tag.SG.SandwichArrows
data modify storage sandwiches:galore Items2 set from entity @s[predicate=sandwiches_galore:holding/bow_mainhand] SelectedItem.tag.SG.SandwichArrows

data modify storage sandwiches:galore Item2 set from storage sandwiches:galore Items2[0]
data modify storage sandwiches:galore Item2.Count set value 1b

data modify storage sandwiches:galore Item1 set from entity @s[predicate=sandwiches_galore:holding/bow_mainhand] SelectedItem
data modify storage sandwiches:galore Item3 set from entity @s[predicate=sandwiches_galore:holding/bow_offhand] Inventory[{Slot:-106b}]
data modify storage sandwiches:galore Item1.tag.SG.SandwichArrows set from storage sandwiches:galore Items
data modify storage sandwiches:galore Item1.Slot set value 0b
data modify storage sandwiches:galore Item3.tag.SG.SandwichArrows set from storage sandwiches:galore Items
data modify storage sandwiches:galore Item3.Slot set value 0b
execute if entity @s[predicate=sandwiches_galore:holding/bow_mainhand] run data modify block -30000000 0 8020 Items[0] set from storage sandwiches:galore Item1
execute if entity @s[predicate=sandwiches_galore:holding/bow_mainhand] run loot replace entity @s weapon.mainhand 1 mine -30000000 0 8020 air{drop_contents:1b}
execute if entity @s[predicate=sandwiches_galore:holding/bow_offhand] run data modify block -30000000 0 8020 Items[0] set from storage sandwiches:galore Item3
execute if entity @s[predicate=sandwiches_galore:holding/bow_offhand] run loot replace entity @s weapon.offhand 1 mine -30000000 0 8020 air{drop_contents:1b}

#execute if score #shot sandwiches matches 1 unless score #different sandwiches matches 1 if score #length_new sandwiches < #length_old sandwiches run data modify storage sandwiches:galore Items2 append from storage sandwiches:galore Items2[0]
#execute if score #shot sandwiches matches 1 unless score #different sandwiches matches 1 if score #length_new sandwiches < #length_old sandwiches run data remove storage sandwiches:galore Items2[0]

#execute if score #shot sandwiches matches 1 unless score #different sandwiches matches 1 if score #length_new sandwiches < #length_old sandwiches run function sandwiches_galore:items/bow/search/found

execute if score #shot sandwiches matches 1 at @s run function sandwiches_galore:items/sandwich/arrow/schedule
