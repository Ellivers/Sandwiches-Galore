execute if score $growth_timer sandwiches >= $growthAttemptPoint sandwiches run function sandwiches_galore:crops/attempt
execute unless block ~ ~-.1 ~ minecraft:farmland run function sandwiches_galore:crops/break
execute unless block ~ ~.1 ~ #sandwiches_galore:air run function sandwiches_galore:crops/break