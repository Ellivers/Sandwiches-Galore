execute unless block ~ ~ ~ minecraft:farmland[moisture=0] if predicate sandwiches_galore:chance/growth_chance_wet run function sandwiches_galore:crops/buckwheat/grow
execute if block ~ ~ ~ minecraft:farmland[moisture=0] if predicate sandwiches_galore:chance/growth_chance_dry run function sandwiches_galore:crops/buckwheat/grow
