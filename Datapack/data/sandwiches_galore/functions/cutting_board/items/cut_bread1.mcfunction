tag @s add has_item
data modify storage sandwiches:cutting_board Item set from entity @s HandItems[0]
data modify storage sandwiches:cutting_board Item.Slot set value 0b
data modify entity @s HandItems[0] set value {id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{DetectCBPlacement:1b,CustomModelData:6710001,GUI_Item:1b}}
execute as @e[type=minecraft:armor_stand,tag=cutting_board_objects,distance=...1,sort=nearest,limit=1,predicate=sandwiches_galore:cutting_board/bread] run function sandwiches_galore:cutting_board/items/cut_bread2