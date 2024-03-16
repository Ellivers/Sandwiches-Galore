scoreboard players add #recurse sg.dummy 1

data modify storage sandwiches:galore Item1 set from storage sandwiches:temp root.items[0]
execute store success score #done sg.dummy if data storage sandwiches:galore Item1{id:"minecraft:arrow"}
execute unless score #done sg.dummy matches 1 store success score #done sg.dummy store success score #tipped sg.dummy if data storage sandwiches:galore Item1{id:"minecraft:tipped_arrow"}
execute unless score #done sg.dummy matches 1 run data remove storage sandwiches:temp root.items[0]

execute if score #done sg.dummy matches 1 unless score #tipped sg.dummy matches 1 run function sandwiches_galore:items/bow/search_creative/done
execute unless score #recurse sg.dummy >= #length sg.dummy unless score #done sg.dummy matches 1 run function sandwiches_galore:items/bow/search_creative/loop
