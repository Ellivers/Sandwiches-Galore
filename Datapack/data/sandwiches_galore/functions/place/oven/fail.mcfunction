scoreboard players set #temp sg.dummy 2
execute if entity @a[advancements={sandwiches_galore:technical/place_item_frame=true},gamemode=!creative,limit=1,predicate=sandwiches_galore:holding/oven_offhand] run scoreboard players set #temp sg.dummy 0
execute if entity @a[advancements={sandwiches_galore:technical/place_item_frame=true},gamemode=!creative,limit=1,predicate=sandwiches_galore:holding/oven_mainhand] run scoreboard players set #temp sg.dummy 1

loot replace block -30000000 0 8020 container.0 loot sandwiches_galore:items/oven
execute if score #temp sg.dummy matches 1 run data modify block -30000000 0 8020 Items[0].Count set from entity @a[advancements={sandwiches_galore:technical/place_item_frame=true},gamemode=!creative,limit=1] SelectedItem.Count
execute if score #temp sg.dummy matches 0 run data modify block -30000000 0 8020 Items[0].Count set from entity @a[advancements={sandwiches_galore:technical/place_item_frame=true},gamemode=!creative,limit=1] Inventory[{Slot:-106b}].Count
execute if score #temp sg.dummy matches 0..1 run loot insert -30000000 0 8020 loot sandwiches_galore:items/oven
execute if score #temp sg.dummy matches 1..2 run loot replace entity @a[advancements={sandwiches_galore:technical/place_item_frame=true},gamemode=!creative,limit=1] weapon.mainhand mine -30000000 0 8020 air{drop_contents:1b}
execute if score #temp sg.dummy matches 0 run loot replace entity @a[advancements={sandwiches_galore:technical/place_item_frame=true},gamemode=!creative,limit=1] weapon.offhand mine -30000000 0 8020 air{drop_contents:1b}

kill @s