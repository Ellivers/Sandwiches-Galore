playsound minecraft:block.wood.break block @a ~ ~ ~
particle minecraft:item minecraft:bowl ~ ~1 ~ .2 .3 .2 .08 28 force
loot spawn ~ ~ ~ loot sandwiches_galore:items/bowl
tag @e[type=minecraft:item,sort=nearest,limit=1] add sg.dont_place
kill @e[type=minecraft:armor_stand,tag=bowl_contents,distance=...1]

kill @s