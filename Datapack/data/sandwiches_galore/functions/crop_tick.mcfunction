execute if score $growth_timer sandwiches >= $growthAttemptPoint sandwiches run function sandwiches_galore:crops/attempt
execute unless block ~ ~-.1 ~ minecraft:farmland run function sandwiches_galore:crops/break
execute unless block ~ ~.1 ~ #sandwiches_galore:air run function sandwiches_galore:crops/break
execute if entity @s[tag=crop_corn_upper,tag=ready] unless predicate sandwiches_galore:corn_none run function sandwiches_galore:crops/corn/take_corn