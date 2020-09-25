tag @s add has_item
#kill @e[type=minecraft:armor_stand,tag=cutting_board_objects,distance=...1,sort=nearest,limit=1]
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,DisabledSlots:4079166,Small:1b,Pose:{Head:[90f,135f,00f]},Invisible:1b,Tags:[cutting_board_objects,sandwiches_galore,generic],ArmorItems:[{},{},{},{id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{CustomModelData:1}}]}
data modify entity @e[type=minecraft:armor_stand,tag=cutting_board_objects,sort=nearest,limit=1] ArmorItems[3] set from entity @s HandItems[0]
data modify entity @s HandItems[0] set value {id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{DetectCBPlacement:1b,CustomModelData:6710001,GUI_Item:1b}}