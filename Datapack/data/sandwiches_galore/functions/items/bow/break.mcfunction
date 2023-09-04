scoreboard players set #temp sandwiches 0
execute if entity @s[predicate=sandwiches_galore:holding/bow_offhand,predicate=sandwiches_galore:holding/1_durability_offhand,predicate=sandwiches_galore:holding/break_offhand] run scoreboard players set #temp sandwiches 1
execute if entity @s[predicate=sandwiches_galore:holding/bow_mainhand,predicate=sandwiches_galore:holding/1_durability_mainhand,predicate=sandwiches_galore:holding/break_mainhand] run scoreboard players set #temp sandwiches 2

execute unless score #temp sandwiches matches 0 run playsound minecraft:entity.item.break block @a ~ ~ ~
execute unless score #temp sandwiches matches 0 run particle minecraft:item minecraft:bow ~ ~1 ~ .2 .3 .2 .08 20 force

execute if score #temp sandwiches matches 1 run item replace entity @s weapon.offhand with air
execute if score #temp sandwiches matches 2 run item replace entity @s weapon.mainhand with minecraft:air

schedule function sandwiches_galore:items/bow/scheduled 2t append
