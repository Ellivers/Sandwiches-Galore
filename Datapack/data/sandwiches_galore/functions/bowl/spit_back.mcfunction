data modify storage sandwiches:galore Item1 set from entity @s HandItems[0]
data modify storage sandwiches:galore Item1.Slot set value 0b

data modify block -30000000 0 8020 Items[0] set from storage sandwiches:galore Item1
loot give @a[advancements={sandwiches_galore:technical/right_click_armor_stand=true},gamemode=!creative,limit=1] mine -30000000 0 8020 air{drop_contents:1b}

replaceitem entity @s weapon.mainhand air