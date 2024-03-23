# Called by sandwiches_galore:place/get_direction
# Gets the direction opposite of where the player is facing

execute if entity @s[y_rotation=51..151] run return -90
execute if entity @s[y_rotation=150..-131] run return 0
execute if entity @s[y_rotation=-130..-42] run return 90
execute if entity @s[y_rotation=-43..50] run return 180

return fail
