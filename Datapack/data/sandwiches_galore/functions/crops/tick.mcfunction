execute if score $growth_timer sandwiches >= $growthAttemptPoint sandwiches run function sandwiches_galore:crops/attempt
execute if score #alternate sandwiches matches 0 unless block ~ ~-.1 ~ minecraft:farmland run function sandwiches_galore:crops/break
execute if score #alternate sandwiches matches 0 unless block ~ ~.1 ~ #sandwiches_galore:air run function sandwiches_galore:crops/break
