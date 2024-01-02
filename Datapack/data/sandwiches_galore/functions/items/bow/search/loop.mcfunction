scoreboard players add #recurse sg.dummy 1

execute store success score #is_arrow sg.dummy if data storage sandwiches:galore Items[0].tag.SG{SandwichArrow:1b}
#execute if score #shot sg.dummy matches 1 if score #is_arrow sg.dummy matches 1 store success score #different sg.dummy run data modify storage sandwiches:galore Items2[0] set from storage sandwiches:galore Items[0]

execute unless score #stored sg.dummy matches 1 if score #is_arrow sg.dummy matches 1 run data modify storage sandwiches:galore Items append from storage sandwiches:galore Items[0]
execute unless score #stored sg.dummy matches 1 run data remove storage sandwiches:galore Items[0]

#execute unless score #found sg.dummy matches 1 if score #different sg.dummy matches 1 if score #shot sg.dummy matches 1 run function sandwiches_galore:items/bow/search/found
execute if score #recurse sg.dummy >= #length_new sg.dummy run function sandwiches_galore:items/bow/search/store

#execute if score #shot sg.dummy matches 1 if score #is_arrow sg.dummy matches 1 unless score #stored sg.dummy matches 1 run data modify storage sandwiches:galore Items2 append from storage sandwiches:galore Items2[0]
#execute if score #shot sg.dummy matches 1 if score #is_arrow sg.dummy matches 1 unless score #stored sg.dummy matches 1 run data remove storage sandwiches:galore Items2[0]

execute unless score #recurse sg.dummy >= #length_new sg.dummy run function sandwiches_galore:items/bow/search/loop
