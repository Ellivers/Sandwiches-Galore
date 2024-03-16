scoreboard players add #recurse sg.dummy 1

execute store success score #is_arrow sg.dummy if data storage sandwiches:temp root.items[0].tag.SG{SandwichArrow:1b}
#execute if score #shot sg.dummy matches 1 if score #is_arrow sg.dummy matches 1 store success score #different sg.dummy run data modify storage sandwiches:temp root.items2[0] set from storage sandwiches:temp root.items[0]

execute unless score #stored sg.dummy matches 1 if score #is_arrow sg.dummy matches 1 run data modify storage sandwiches:temp root.items append from storage sandwiches:temp root.items[0]
execute unless score #stored sg.dummy matches 1 run data remove storage sandwiches:temp root.items[0]

#execute unless score #found sg.dummy matches 1 if score #different sg.dummy matches 1 if score #shot sg.dummy matches 1 run function sandwiches_galore:items/bow/search/found
execute if score #recurse sg.dummy >= #length_new sg.dummy run function sandwiches_galore:items/bow/search/store

#execute if score #shot sg.dummy matches 1 if score #is_arrow sg.dummy matches 1 unless score #stored sg.dummy matches 1 run data modify storage sandwiches:temp root.items2 append from storage sandwiches:temp root.items2[0]
#execute if score #shot sg.dummy matches 1 if score #is_arrow sg.dummy matches 1 unless score #stored sg.dummy matches 1 run data remove storage sandwiches:temp root.items2[0]

execute unless score #recurse sg.dummy >= #length_new sg.dummy run function sandwiches_galore:items/bow/search/loop
