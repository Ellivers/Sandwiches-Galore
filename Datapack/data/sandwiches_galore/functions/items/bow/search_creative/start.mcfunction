data modify storage sandwiches:temp root.items set from entity @s Inventory
execute store result score #length sg.dummy run data get storage sandwiches:temp root.items

scoreboard players set #recurse sg.dummy 0
function sandwiches_galore:items/bow/search_creative/loop

scoreboard players reset @s sg.use_bow
