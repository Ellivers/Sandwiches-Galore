tag @s remove sg.scheduled
scoreboard players operation #temp_id sg.dummy = @s sg.id

data modify storage sandwiches:galore Arrow set from entity @e[type=arrow,nbt={life:0s},sort=nearest,limit=1]
execute at @e[type=arrow,tag=!sg.sandwich_arrow,nbt={life:0s},sort=nearest,limit=1] run summon arrow ~ ~ ~ {Passengers:[{id:"minecraft:armor_stand",Small:1b,Marker:1b,Invisible:1b,Tags:["sandwiches_galore","sg.sandwich_arrow_marker","sg.no_fire"],ArmorItems:[{id:"minecraft:arrow",Count:1b,tag:{SG:{SandwichArrow:1b,CustomModelData:something,Items:[]}}}]}],Tags:["sandwiches_galore","sg.sandwich_arrow","sg.no_fire"]}
kill @e[type=arrow,tag=!sg.sandwich_arrow,nbt={life:0s},sort=nearest,limit=1]

execute as @e[type=arrow,tag=sg.sandwich_arrow,sort=nearest,limit=1] run function sandwiches_galore:items/sandwich/arrow/shoot.arrow

execute as @e[type=armor_stand,tag=sg.sandwich_arrow_marker,sort=nearest,limit=1] run function sandwiches_galore:items/sandwich/arrow/shoot.armor_stand
