stopsound @a[distance=..16] * minecraft:item.armor.equip_generic
playsound sandwiches_galore:item.knife.cut block @a ^-.4 ^.84 ^-.37

execute store success score @s sandwiches if entity @a[advancements={sandwiches_galore:technical/right_click_armor_stand=true},gamemode=creative]

execute if score @s sandwiches matches 0 store result score #sg.knife_durability sandwiches run data get storage sandwiches:galore Item1.tag.Damage
execute if score @s sandwiches matches 0 unless score #sg.knife_durability sandwiches matches 249.. store result storage sandwiches:galore Item1.tag.Damage int -1 run data get storage sandwiches:galore Item1.tag.Damage -1.0000000001
execute if score @s sandwiches matches 0 if score #sg.knife_durability sandwiches matches 0 run data modify storage sandwiches:galore Item1.tag.Damage set value 1
execute if score @s sandwiches matches 0 if score #sg.knife_durability sandwiches matches 249.. at @a[advancements={sandwiches_galore:technical/right_click_armor_stand=true},limit=1] run playsound minecraft:entity.item.break block @a ~ ~ ~
execute if score @s sandwiches matches 0 if score #sg.knife_durability sandwiches matches 249.. at @a[advancements={sandwiches_galore:technical/right_click_armor_stand=true},limit=1] run particle minecraft:item minecraft:iron_sword{CustomModelData:6710001} ~ ~1 ~ .2 .3 .2 .08 20 force
execute unless score #sg.knife_durability sandwiches matches 249.. run function sandwiches_galore:replace_item

execute if predicate sandwiches_galore:cutting_board/wheat_bread positioned ^-.4 ^.84 ^-.37 align xyz run function sandwiches_galore:cutting_board/slices/wheat
execute if predicate sandwiches_galore:cutting_board/buckwheat_bread positioned ^-.4 ^.84 ^-.37 align xyz run function sandwiches_galore:cutting_board/slices/buckwheat
execute if predicate sandwiches_galore:cutting_board/nether_sprout_bread positioned ^-.4 ^.84 ^-.37 align xyz run function sandwiches_galore:cutting_board/slices/nether_sprout
execute if predicate sandwiches_galore:cutting_board/cornbread positioned ^-.4 ^.84 ^-.37 align xyz run function sandwiches_galore:cutting_board/slices/corn
function #sandwiches_galore:cutting_board/knife
