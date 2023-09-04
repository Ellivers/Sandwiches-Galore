# Called by sandwiches_galore:crops/corn/update

tag @s remove sg.has_upper_half
execute on vehicle on passengers run kill @s[tag=sg.upper_half]
