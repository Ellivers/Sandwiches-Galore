tag @s add sg.has_water
summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["sandwiches_galore","sg.bowl_contents","sg.no_fire","sg.bowl_contents.water"],ArmorItems:[{},{},{},{id:"minecraft:netherite_hoe",Count:1b,tag:{CustomModelData:6710021}}]}
stopsound @a[distance=..16] * minecraft:item.armor.equip_generic
playsound minecraft:item.bucket.empty block @a ~ ~ ~
item replace entity @s weapon.mainhand with minecraft:air
item replace entity @a[advancements={sandwiches_galore:technical/right_click_armor_stand=true},gamemode=!creative,limit=1] weapon.mainhand with minecraft:bucket