playsound minecraft:block.wood.break block @a ~ ~ ~
particle minecraft:item minecraft:netherite_hoe{CustomModelData:6710017} ~ ~1 ~ .2 .3 .2 .08 28 force
loot spawn ~ ~ ~ loot sandwiches_galore:items/cutting_board
execute if entity @s[tag=sg.rot0] align xyz run function sandwiches_galore:cutting_board/remove_item
execute if entity @s[tag=sg.rot-90] align xyz positioned ~ ~ ~1 run function sandwiches_galore:cutting_board/remove_item
execute if entity @s[tag=sg.rot90] align xyz positioned ~1 ~ ~ run function sandwiches_galore:cutting_board/remove_item
execute if entity @s[tag=sg.rot180] align xyz positioned ~1 ~ ~1 run function sandwiches_galore:cutting_board/remove_item

kill @s