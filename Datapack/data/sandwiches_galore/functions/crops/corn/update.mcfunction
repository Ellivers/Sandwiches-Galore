execute if score @s sg.growth_state matches ..-1 run scoreboard players set @s sg.growth_state 0
execute if score @s sg.growth_state matches 14.. run scoreboard players set @s sg.growth_state 13

execute if score @s sg.growth_state matches 0 run data modify entity @s height set value .25f
execute if score @s sg.growth_state matches 1 run data modify entity @s height set value .4375f
execute if score @s sg.growth_state matches 2 run data modify entity @s height set value .625f
execute if score @s sg.growth_state matches 3 run data modify entity @s height set value .875f
execute if score @s sg.growth_state matches 4 run data modify entity @s height set value 1.1875f
execute if score @s sg.growth_state matches 5 run data modify entity @s height set value 1.375f
execute if score @s sg.growth_state matches 6 run data modify entity @s height set value 1.625f
execute if score @s sg.growth_state matches 7.. run data modify entity @s height set value 2f

# Bottom
execute if score @s sg.growth_state matches 0 on vehicle run data modify entity @s item.tag.CustomModelData set value 6710025
execute if score @s sg.growth_state matches 1 on vehicle run data modify entity @s item.tag.CustomModelData set value 6710026
execute if score @s sg.growth_state matches 2 on vehicle run data modify entity @s item.tag.CustomModelData set value 6710027
execute if score @s sg.growth_state matches 3 on vehicle run data modify entity @s item.tag.CustomModelData set value 6710028
execute if score @s sg.growth_state matches 4..6 on vehicle run data modify entity @s item.tag.CustomModelData set value 6710029
execute if score @s sg.growth_state matches 7..12 on vehicle run data modify entity @s item.tag.CustomModelData set value 6710033
execute if score @s sg.growth_state matches 13 on vehicle run data modify entity @s item.tag.CustomModelData set value 6710035

# Top
execute if score @s[tag=sg.has_upper_half] sg.growth_state matches ..3 run function sandwiches_galore:crops/corn/upper_half/remove
execute if score @s[tag=!sg.has_upper_half] sg.growth_state matches 4.. run function sandwiches_galore:crops/corn/upper_half/create

execute if score @s sg.growth_state matches ..4 on vehicle on passengers if entity @s[tag=sg.upper_half] run data modify entity @s item.tag.CustomModelData set value 6710030
execute if score @s sg.growth_state matches 5 on vehicle on passengers if entity @s[tag=sg.upper_half] run data modify entity @s item.tag.CustomModelData set value 6710031
execute if score @s sg.growth_state matches 6 on vehicle on passengers if entity @s[tag=sg.upper_half] run data modify entity @s item.tag.CustomModelData set value 6710032
execute if score @s sg.growth_state matches 7..12 on vehicle on passengers if entity @s[tag=sg.upper_half] run data modify entity @s item.tag.CustomModelData set value 6710034
execute if score @s sg.growth_state matches 13 on vehicle on passengers if entity @s[tag=sg.upper_half] run data modify entity @s item.tag.CustomModelData set value 6710036
