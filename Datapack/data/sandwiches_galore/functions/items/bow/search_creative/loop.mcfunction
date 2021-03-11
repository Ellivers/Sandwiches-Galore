scoreboard players add #recurse sandwiches 1

data modify storage sandwiches:galore Item1 set from storage sandwiches:galore Items[0]
execute store success score #done sandwiches if data storage sandwiches:galore Item1{id:"minecraft:arrow"}
execute unless score #done sandwiches matches 1 store success score #done sandwiches store success score #tipped sandwiches if data storage sandwiches:galore Item1{id:"minecraft:tipped_arrow"}
execute unless score #done sandwiches matches 1 run data remove storage sandwiches:galore Items[0]

execute if score #done sandwiches matches 1 unless score #tipped sandwiches matches 1 run function sandwiches_galore:items/bow/search_creative/done
execute unless score #recurse sandwiches >= #length sandwiches unless score #done sandwiches matches 1 run function sandwiches_galore:items/bow/search_creative/loop
