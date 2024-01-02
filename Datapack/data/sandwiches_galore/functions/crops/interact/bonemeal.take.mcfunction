# Called by sandwiches_galore:crops/bonemeal
# Takes one bone meal

execute if score #temp sg.dummy matches 1 run item modify entity @s weapon.offhand sandwiches_galore:remove_1
execute if score #temp sg.dummy matches 2 run item modify entity @s weapon.mainhand sandwiches_galore:remove_1
