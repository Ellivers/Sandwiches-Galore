execute if score $growth_timer sg.dummy >= $growthAttemptPoint sg.dummy run function sandwiches_galore:crops/attempt
execute if score #alternate sg.dummy matches 0 unless block ~ ~-.1 ~ minecraft:farmland run function sandwiches_galore:crops/break
execute if score #alternate sg.dummy matches 0 unless block ~ ~.1 ~ #sandwiches_galore:air run function sandwiches_galore:crops/break
