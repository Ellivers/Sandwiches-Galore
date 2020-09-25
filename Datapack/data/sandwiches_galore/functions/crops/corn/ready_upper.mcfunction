tag @s add ready
data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710036
tp @e[type=minecraft:pig,tag=hitbox,distance=...2,sort=nearest,limit=1] ~ -200 ~
data merge entity @s {DisabledSlots:4079166,Marker:0b,HandItems:[{id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{DetectCornRC:1b,CustomModelData:6710001,GUI_Item:1b}}]}