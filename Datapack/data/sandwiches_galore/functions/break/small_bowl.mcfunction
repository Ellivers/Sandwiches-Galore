playsound minecraft:block.wood.break block @a ~ ~ ~
particle minecraft:item minecraft:bowl ~ ~1 ~ .2 .3 .2 .08 28 force
loot spawn ~ ~ ~ loot sandwiches_galore:items/bowl

tag @s add sg.dont_destroy
execute on vehicle on passengers run kill @s[tag=!sg.dont_destroy]
execute on vehicle run kill @s
kill @s