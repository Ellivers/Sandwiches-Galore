execute align xyz positioned ~.5 ~.2 ~.5 run kill @e[type=minecraft:armor_stand,tag=sg.bowl_contents,distance=...5]
loot spawn ~ ~ ~ loot sandwiches_galore:items/buckwheat_dough
execute if entity @s[tag=sg.large_bowl] store result entity @e[type=minecraft:item,sort=nearest,limit=1] Item.Count byte 1 run scoreboard players get @s sg.flour_level
scoreboard players reset @s[tag=sg.large_bowl] sg.flour_level
tag @s remove sg.has_water
tag @s remove sg.has_flour
tag @s remove sg.flour.buckwheat