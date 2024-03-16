# Called by sandwiches_galore:crops/interact/load

execute on target store success score #sneaking sg.dummy if entity @s[tag=sg.sneaking]

execute if entity @s[tag=sg.crop.buckwheat] if score #sneaking sg.dummy matches 0 run function sandwiches_galore:crops/buckwheat/debug_stick/cycle
execute if entity @s[tag=sg.crop.buckwheat] if score #sneaking sg.dummy matches 1 run function sandwiches_galore:crops/buckwheat/debug_stick/cycle_backwards
execute if entity @s[tag=sg.crop.corn] if score #sneaking sg.dummy matches 0 run function sandwiches_galore:crops/corn/debug_stick/cycle
execute if entity @s[tag=sg.crop.corn] if score #sneaking sg.dummy matches 1 run function sandwiches_galore:crops/corn/debug_stick/cycle_backwards

scoreboard players operation #temp sg.dummy = @s sg.growth_state
execute on target run title @s actionbar {"translate":"item.minecraft.debug_stick.update","with":["age",{"score":{"name": "#temp","objective": "sg.dummy"}}]}
