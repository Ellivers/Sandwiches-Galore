data modify storage sandwiches:galore Item1 set from entity @s HandItems[0]
data modify storage sandwiches:galore Item1.Slot set value 0b
replaceitem entity @s weapon.mainhand air
stopsound @a[distance=..16] * minecraft:item.armor.equip_generic
playsound sandwiches_galore:item.whisk.use block @a ~ ~ ~

execute store result score #sg.whisk_durability sandwiches run data get storage sandwiches:galore Item1.tag.Damage
execute unless score #sg.whisk_durability sandwiches matches 99.. store result storage sandwiches:galore Item1.tag.Damage int -1 run data get storage sandwiches:galore Item1.tag.Damage -1.0000000001
execute if score #sg.whisk_durability sandwiches matches 0 run data modify storage sandwiches:galore Item1.tag.Damage set value 1

execute if entity @s[tag=sg.flour.wheat] run function sandwiches_galore:bowl/dough/wheat
execute if entity @s[tag=sg.flour.buckwheat] run function sandwiches_galore:bowl/dough/buckwheat
execute if entity @s[tag=sg.flour.nether_sprout] run function sandwiches_galore:bowl/dough/nether_sprout
execute if entity @s[tag=sg.flour.corn] run function sandwiches_galore:bowl/dough/corn
function #sandwiches_galore:bowl/whisk

execute if score #sg.whisk_durability sandwiches matches 99.. at @a[advancements={sandwiches_galore:technical/right_click_armor_stand=true},gamemode=!creative,limit=1] run playsound minecraft:entity.item.break block @a ~ ~ ~
execute if score #sg.whisk_durability sandwiches matches 99.. at @a[advancements={sandwiches_galore:technical/right_click_armor_stand=true},gamemode=!creative,limit=1] run particle minecraft:item minecraft:warped_fungus_on_a_stick{CustomModelData:6710001} ~ ~1 ~ .2 .3 .2 .08 20 force
execute unless score #sg.whisk_durability sandwiches matches 99.. unless entity @a[advancements={sandwiches_galore:technical/right_click_armor_stand=true},gamemode=creative] run function sandwiches_galore:replace_item
