# Called by sandwiches_galore:triggers/hitbox_hit/run

scoreboard players operation #temp sg.dummy = @s sg.growth_state

execute on attacker run title @s actionbar {"translate":"item.minecraft.debug_stick.select","with":["age",{"score":{"name": "#temp","objective": "sandwiches"}}]}

schedule function sandwiches_galore:break/anti_attack_sound 1t
