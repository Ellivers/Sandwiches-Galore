data modify storage sandwiches:bowl Item set from entity @s HandItems[0]
data modify storage sandwiches:bowl Item.Slot set value 0b
data remove entity @s HandItems[0]
stopsound @a[distance=..10,tag=!global.ignore,tag=!global.ignore.gui] * minecraft:item.armor.equip_generic
playsound sandwiches_galore:item.whisk.use block @a ~ ~ ~
execute store result score #sg.whisk_durability sandwiches run data get storage sandwiches:bowl Item.tag.Damage
execute unless score #sg.whisk_durability sandwiches matches 99.. store result storage sandwiches:bowl Item.tag.Damage int -1 run data get storage sandwiches:bowl Item.tag.Damage -1.0000000001
execute if score #sg.whisk_durability sandwiches matches 0 run data modify storage sandwiches:bowl Item.tag.Damage set value 1
execute if entity @s[tag=wheat_flour] run function sandwiches_galore:bowl/dough/wheat
execute if entity @s[tag=buckwheat_flour] run function sandwiches_galore:bowl/dough/buckwheat
execute if entity @s[tag=nether_sprout_flour] run function sandwiches_galore:bowl/dough/nether_sprout
execute if entity @s[tag=corn_flour] run function sandwiches_galore:bowl/dough/corn
execute if score #sg.whisk_durability sandwiches matches 99.. run playsound minecraft:entity.item.break block @a ~ ~ ~
execute if score #sg.whisk_durability sandwiches matches 99.. at @p[tag=!global.ignore] run particle minecraft:item minecraft:warped_fungus_on_a_stick{CustomModelData:6710001} ~ ~1 ~ .2 .3 .2 .08 20 force
execute unless score #sg.whisk_durability sandwiches matches 99.. run function sandwiches_galore:bowl/whisk.give