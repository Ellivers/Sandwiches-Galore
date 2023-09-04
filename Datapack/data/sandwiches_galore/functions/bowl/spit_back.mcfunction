data modify storage sandwiches:galore Item1 set from entity @s HandItems[0]
data modify storage sandwiches:galore Item1.Slot set value 0b
item replace entity @s weapon.mainhand with minecraft:air

function sandwiches_galore:item_modification/replace.armor_stand_rc
