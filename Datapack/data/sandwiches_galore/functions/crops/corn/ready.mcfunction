scoreboard players set @s sg.growth_state 8
data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710035
execute positioned ~ ~1 ~ as @e[type=minecraft:armor_stand,tag=sg.corn.upper,distance=...5,sort=nearest,limit=1] run function sandwiches_galore:crops/corn/ready_upper