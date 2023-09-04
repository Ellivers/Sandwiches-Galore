# Called by sandwiches_galore:crops/buckwheat/bonemeal and sandwiches_galore:crops/buckwheat/grow
# Updates the hitbox and visuals

execute if score @s sg.growth_state matches ..-1 run scoreboard players set @s sg.growth_state 0
execute if score @s sg.growth_state matches 8.. run scoreboard players set @s sg.growth_state 7

execute if score @s sg.growth_state matches 0 run data modify entity @s height set value .125f
execute if score @s sg.growth_state matches 1 run data modify entity @s height set value .25f
execute if score @s sg.growth_state matches 2 run data modify entity @s height set value .375f
execute if score @s sg.growth_state matches 3 run data modify entity @s height set value .5f
execute if score @s sg.growth_state matches 4 run data modify entity @s height set value .625f
execute if score @s sg.growth_state matches 5 run data modify entity @s height set value .75f
execute if score @s sg.growth_state matches 6 run data modify entity @s height set value .875f
execute if score @s sg.growth_state matches 7 run data modify entity @s height set value 1f

execute if score @s sg.growth_state matches ..6 run data modify entity @s response set value 1b
execute if score @s sg.growth_state matches 7 run data modify entity @s response set value 0b

execute if score @s sg.growth_state matches 0 on vehicle run data modify entity @s item.tag.CustomModelData set value 6710001
execute if score @s sg.growth_state matches 1 on vehicle run data modify entity @s item.tag.CustomModelData set value 6710002
execute if score @s sg.growth_state matches 2 on vehicle run data modify entity @s item.tag.CustomModelData set value 6710003
execute if score @s sg.growth_state matches 3 on vehicle run data modify entity @s item.tag.CustomModelData set value 6710004
execute if score @s sg.growth_state matches 4 on vehicle run data modify entity @s item.tag.CustomModelData set value 6710005
execute if score @s sg.growth_state matches 5 on vehicle run data modify entity @s item.tag.CustomModelData set value 6710006
execute if score @s sg.growth_state matches 6 on vehicle run data modify entity @s item.tag.CustomModelData set value 6710007
execute if score @s sg.growth_state matches 7 on vehicle run data modify entity @s item.tag.CustomModelData set value 6710008
