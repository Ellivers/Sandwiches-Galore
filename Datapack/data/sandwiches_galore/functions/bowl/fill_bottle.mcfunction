replaceitem entity @s weapon.mainhand air
execute if entity @s[tag=sg.bowl] run give @a[advancements={sandwiches_galore:technical/right_click_armor_stand=true},limit=1] minecraft:potion{Potion:"minecraft:water"}
execute if entity @s[tag=sg.large_bowl] run give @a[advancements={sandwiches_galore:technical/right_click_armor_stand=true},limit=1] minecraft:bucket
stopsound @a[distance=..16] * minecraft:entity.item.pickup
execute if entity @s[tag=sg.bowl] run playsound minecraft:item.bottle.fill block @a ~ ~ ~
execute if entity @s[tag=sg.large_bowl] run playsound minecraft:item.bucket.fill block @a ~ ~ ~
kill @e[type=minecraft:armor_stand,tag=sg.bowl_contents,tag=sg.bowl_contents.water,sort=nearest,limit=1]
tag @s remove sg.has_water