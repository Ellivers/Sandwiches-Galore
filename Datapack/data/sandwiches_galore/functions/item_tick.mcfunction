#Used for bonemealing, making crafters, and placing bowls

#To reduce lag, give items which are not used for anything in this datapack a tag, so they're not selected anymore

execute if data entity @s {Item:{id:"minecraft:bowl",Count:1b}} if data entity @s Thrower run function sandwiches_galore:place/bowl/check
execute if data entity @s {Item:{id:"minecraft:wooden_axe",Count:1b}} if entity @e[type=minecraft:item,distance=...5,nbt={Item:{id:"minecraft:wheat",Count:1b}}] if block ~ ~-1 ~ minecraft:crafting_table run function sandwiches_galore:place/crafter/make
execute if data entity @s {Item:{id:"minecraft:bone_meal",Count:1b}} as @e[type=minecraft:armor_stand,tag=sg.crop,sort=nearest,limit=1,distance=..1] at @s run function sandwiches_galore:crops/bonemeal

execute unless data entity @s {Item:{id:"minecraft:wooden_axe",Count:1b}} run tag @s add sg.dont_check