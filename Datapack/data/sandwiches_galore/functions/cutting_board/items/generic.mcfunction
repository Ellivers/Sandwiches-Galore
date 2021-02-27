tag @s add sg.has_item
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,DisabledSlots:4079166,Small:1b,Pose:{Head:[90f,135f,00f]},Invisible:1b,Tags:[sg.cutting_board_object,sandwiches_galore,sg.generic],ArmorItems:[{},{},{},{id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{CustomModelData:6710001,SG:{GUI_Item:1b}}}]}
function sandwiches_galore:cutting_board/set_rotation
data modify entity @e[type=minecraft:armor_stand,tag=sg.cutting_board_object,sort=nearest,limit=1] ArmorItems[3] set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand loot sandwiches_galore:technical/cutting_board_right_click