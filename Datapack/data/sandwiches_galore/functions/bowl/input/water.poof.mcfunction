stopsound @a[distance=..16] * minecraft:item.armor.equip_generic
playsound minecraft:entity.generic.extinguish_fire block @a ~ ~ ~ 0.8 2
execute if entity @s[tag=sg.bowl] run particle minecraft:large_smoke ~ ~ ~ 0.3 0.3 0.3 0 10
execute if entity @s[tag=sg.large_bowl] run particle minecraft:large_smoke ~ ~ ~ 0.3 0.3 0.3 0 15
replaceitem entity @s weapon.mainhand air
execute if entity @s[tag=sg.bowl] run replaceitem entity @a[advancements={sandwiches_galore:technical/right_click_armor_stand=true},gamemode=!creative,limit=1] weapon.mainhand minecraft:glass_bottle
execute if entity @s[tag=sg.large_bowl] run replaceitem entity @a[advancements={sandwiches_galore:technical/right_click_armor_stand=true},gamemode=!creative,limit=1] weapon.mainhand minecraft:bucket