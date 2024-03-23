# Called by sandwiches_galore:machines/update_light and sandwiches_galore:crops/update_light
# Gets the light level for one block

execute positioned ~1 ~ ~ positioned over motion_blocking_no_leaves positioned ~-1 ~ ~ if entity @s[dx=0,dy=1000,dz=0] run return 15
execute positioned ~ ~ ~1 positioned over motion_blocking_no_leaves positioned ~ ~ ~-1 if entity @s[dx=0,dy=1000,dz=0] run return 15
execute positioned ~-1 ~ ~ positioned over motion_blocking_no_leaves positioned ~1 ~ ~ if entity @s[dx=0,dy=1000,dz=0] run return 15
execute positioned ~ ~ ~-1 positioned over motion_blocking_no_leaves positioned ~ ~ ~1 if entity @s[dx=0,dy=1000,dz=0] run return 15

return fail
