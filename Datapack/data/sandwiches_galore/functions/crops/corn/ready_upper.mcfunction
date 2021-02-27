tag @s add sg.ready
tag @s add sg.clickable
tp @e[type=minecraft:pig,tag=sg.hitbox,distance=...2,sort=nearest,limit=1] ~ -200 ~
data merge entity @s {DisabledSlots:4079166,Marker:0b}
data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710036
loot replace entity @s weapon.mainhand loot sandwiches_galore:technical/corn_right_click