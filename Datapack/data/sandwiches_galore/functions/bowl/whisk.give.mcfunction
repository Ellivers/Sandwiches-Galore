setblock ~ 254 ~ minecraft:yellow_shulker_box
data modify block ~ 254 ~ Items append from storage sandwiches:bowl Item
loot replace entity @p[tag=!global.ignore] weapon.mainhand 1 mine ~ 254 ~ minecraft:air{drop_contents:1b}
clone ~1 254 ~ ~1 254 ~ ~ 254 ~