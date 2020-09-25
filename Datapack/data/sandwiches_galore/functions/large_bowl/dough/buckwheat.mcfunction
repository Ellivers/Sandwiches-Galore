kill @e[type=minecraft:armor_stand,tag=bowl_contents,distance=...5]
loot spawn ~ ~ ~ loot sandwiches_galore:items/buckwheat_dough
execute store result entity @e[type=minecraft:item,sort=nearest,limit=1] Item.Count byte 1 run scoreboard players get @s sg.flour_level
scoreboard players reset @s sg.flour_level
tag @s remove water
tag @s remove flour
tag @s remove buckwheat_flour