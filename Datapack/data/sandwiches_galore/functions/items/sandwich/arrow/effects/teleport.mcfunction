playsound sandwiches_galore:entity.generic.teleport neutral @a[distance=..16]
execute if predicate sandwiches_galore:in_nether run spreadplayers ~ ~ 8 20 under 128 false @s
execute unless predicate sandwiches_galore:in_nether run spreadplayers ~ ~ 8 20 false @s
execute at @s run particle portal ~ ~.5 ~ 0.3 0.5 0.3 1 50