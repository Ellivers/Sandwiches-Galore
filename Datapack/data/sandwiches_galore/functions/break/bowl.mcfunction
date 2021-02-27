playsound minecraft:block.wood.break block @a ~ ~ ~
particle minecraft:item minecraft:bowl ~ ~1 ~ .2 .3 .2 .08 28 force
loot spawn ~ ~ ~ loot sandwiches_galore:items/bowl
kill @e[type=minecraft:armor_stand,tag=sg.bowl_contents,distance=...1]

kill @s