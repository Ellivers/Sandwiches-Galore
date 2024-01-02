# Called by various placement functions
# Common commands for giving back blocks that failed to place

execute if score #temp sg.dummy matches 0 if predicate sandwiches_galore:holding_item run scoreboard players set #temp sg.dummy 3
execute if score #temp sg.dummy matches 3 if predicate sandwiches_galore:full_inventory run scoreboard players set #temp sg.dummy 4

execute if score #temp sg.dummy matches 1 if predicate sandwiches_galore:holding/63/offhand run scoreboard players set #temp sg.dummy 5
execute if score #temp sg.dummy matches 2 if predicate sandwiches_galore:holding/63/mainhand run scoreboard players set #temp sg.dummy 6

execute if score #temp sg.dummy matches 1 run item modify entity @s weapon.offhand sandwiches_galore:add_2
execute if score #temp sg.dummy matches 1 run item modify entity @s weapon.offhand sandwiches_galore:remove_1
execute if score #temp sg.dummy matches 2 run item modify entity @s weapon.mainhand sandwiches_galore:add_2
execute if score #temp sg.dummy matches 2 run item modify entity @s weapon.mainhand sandwiches_galore:remove_1

execute if score #temp sg.dummy matches 5 run item modify entity @s weapon.offhand sandwiches_galore:remove_1
execute if score #temp sg.dummy matches 5 run item modify entity @s weapon.offhand sandwiches_galore:add_2
execute if score #temp sg.dummy matches 6 run item modify entity @s weapon.mainhand sandwiches_galore:remove_1
execute if score #temp sg.dummy matches 6 run item modify entity @s weapon.mainhand sandwiches_galore:add_2

execute if score #temp sg.dummy matches 0 run item replace entity @s weapon.mainhand with minecraft:air
