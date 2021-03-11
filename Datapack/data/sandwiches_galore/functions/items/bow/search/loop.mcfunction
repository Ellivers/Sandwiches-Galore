scoreboard players add #recurse sandwiches 1

execute store success score #is_arrow sandwiches if data storage sandwiches:galore Items[0].tag.SG{SandwichArrow:1b}
#execute if score #shot sandwiches matches 1 if score #is_arrow sandwiches matches 1 store success score #different sandwiches run data modify storage sandwiches:galore Items2[0] set from storage sandwiches:galore Items[0]

execute unless score #stored sandwiches matches 1 if score #is_arrow sandwiches matches 1 run data modify storage sandwiches:galore Items append from storage sandwiches:galore Items[0]
execute unless score #stored sandwiches matches 1 run data remove storage sandwiches:galore Items[0]

#execute unless score #found sandwiches matches 1 if score #different sandwiches matches 1 if score #shot sandwiches matches 1 run function sandwiches_galore:items/bow/search/found
execute if score #recurse sandwiches >= #length_new sandwiches run function sandwiches_galore:items/bow/search/store

#execute if score #shot sandwiches matches 1 if score #is_arrow sandwiches matches 1 unless score #stored sandwiches matches 1 run data modify storage sandwiches:galore Items2 append from storage sandwiches:galore Items2[0]
#execute if score #shot sandwiches matches 1 if score #is_arrow sandwiches matches 1 unless score #stored sandwiches matches 1 run data remove storage sandwiches:galore Items2[0]

execute unless score #recurse sandwiches >= #length_new sandwiches run function sandwiches_galore:items/bow/search/loop
