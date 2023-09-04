execute if entity @s[tag=sg.crop] on attacker store success score #temp sandwiches if entity @s[predicate=sandwiches_galore:holding/debug_stick/mainhand,gamemode=creative]

execute if entity @s[tag=sg.crop.buckwheat] if score #temp sandwiches matches 0 run function sandwiches_galore:break/buckwheat
execute if entity @s[tag=sg.crop.corn] if score #temp sandwiches matches 0 run function sandwiches_galore:break/corn
execute if entity @s[tag=sg.crop] if score #temp sandwiches matches 1 run function sandwiches_galore:crops/interact/debug_stick.hit
execute if entity @s[tag=sg.crop] if score #temp sandwiches matches 0 run schedule function sandwiches_galore:break/anti_attack_sound 1t

data remove entity @s attack
