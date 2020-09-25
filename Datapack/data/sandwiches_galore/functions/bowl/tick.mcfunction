execute if block ~ ~-.1 ~ minecraft:air run function sandwiches_galore:break/bowl
execute if entity @s[tag=!water] if predicate sandwiches_galore:rain run function sandwiches_galore:bowl/add/water.rainfill
execute if predicate sandwiches_galore:holding_item run function sandwiches_galore:bowl/item_input