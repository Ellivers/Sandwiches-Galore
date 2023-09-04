# Used for bonemealing, making crafters, and placing bowls

# To reduce lag, give items which are not used for anything in this datapack a tag, so they're not selected anymore

data modify storage sandwiches:galore root.temp.item set from entity @s Item

execute if data storage sandwiches:galore root.temp.item{id:"minecraft:bowl",Count:1b} if data entity @s Thrower run function sandwiches_galore:place/bowl/check
execute if data storage sandwiches:galore root.temp.item{id:"minecraft:wooden_axe",Count:1b} if entity @e[type=minecraft:item,distance=...5,nbt={Item:{id:"minecraft:wheat",Count:1b}}] if block ~ ~-1 ~ minecraft:crafting_table run function sandwiches_galore:place/crafter/make

execute unless data storage sandwiches:galore root.temp.item{id:"minecraft:wooden_axe",Count:1b} run tag @s add sg.dont_check
