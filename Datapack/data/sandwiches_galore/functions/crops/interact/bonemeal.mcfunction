# Called by sandwiches_galore:crops/interact/load

scoreboard players set #success sg.dummy 0
execute if entity @s[tag=sg.crop.buckwheat] if score @s sg.growth_state matches ..6 run function sandwiches_galore:crops/buckwheat/bonemeal
execute if entity @s[tag=sg.crop.corn] if score @s sg.growth_state matches ..12 run function sandwiches_galore:crops/corn/bonemeal

execute if score #success sg.dummy matches 1 on target if entity @s[gamemode=!creative] run function sandwiches_galore:crops/interact/bonemeal.take
execute if score #success sg.dummy matches 1 run playsound item.bone_meal.use block @a ~ ~ ~ 1
