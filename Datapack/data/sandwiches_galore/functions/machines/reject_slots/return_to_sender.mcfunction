data modify storage sandwiches:galore Item1.Slot set value 0b
data modify block -30000000 0 8020 Items[0] set from storage sandwiches:galore Item1

scoreboard players set #temp_rej sandwiches 0

execute if score #temp_rej sandwiches matches 0 store result score #temp_rej sandwiches if block ~1 ~ ~ minecraft:hopper[facing=west]{TransferCooldown:8} run loot insert ~1 ~ ~ mine -30000000 0 8020 air{drop_contents:1b}
execute if score #temp_rej sandwiches matches 0 store result score #temp_rej sandwiches if block ~-1 ~ ~ minecraft:hopper[facing=east]{TransferCooldown:8} run loot insert ~-1 ~ ~ mine -30000000 0 8020 air{drop_contents:1b}
execute if score #temp_rej sandwiches matches 0 store result score #temp_rej sandwiches if block ~ ~1 ~ minecraft:hopper[facing=down]{TransferCooldown:8} run loot insert ~ ~1 ~ mine -30000000 0 8020 air{drop_contents:1b}
execute if score #temp_rej sandwiches matches 0 store result score #temp_rej sandwiches if block ~ ~ ~1 minecraft:hopper[facing=north]{TransferCooldown:8} run loot insert ~ ~ ~1 mine -30000000 0 8020 air{drop_contents:1b}
execute if score #temp_rej sandwiches matches 0 store result score #temp_rej sandwiches if block ~ ~ ~-1 minecraft:hopper[facing=south]{TransferCooldown:8} run loot insert ~ ~ ~-1 mine -30000000 0 8020 air{drop_contents:1b}

execute if score #temp_rej sandwiches matches 0 store result score #temp_rej sandwiches if block ~1 ~ ~ minecraft:dropper[facing=west,triggered=true] run loot insert ~1 ~ ~ mine -30000000 0 8020 air{drop_contents:1b}
execute if score #temp_rej sandwiches matches 0 store result score #temp_rej sandwiches if block ~-1 ~ ~ minecraft:dropper[facing=east,triggered=true] run loot insert ~-1 ~ ~ mine -30000000 0 8020 air{drop_contents:1b}
execute if score #temp_rej sandwiches matches 0 store result score #temp_rej sandwiches if block ~ ~1 ~ minecraft:dropper[facing=down,triggered=true] run loot insert ~ ~1 ~ mine -30000000 0 8020 air{drop_contents:1b}
execute if score #temp_rej sandwiches matches 0 store result score #temp_rej sandwiches if block ~ ~-1 ~ minecraft:dropper[facing=up,triggered=true] run loot insert ~ ~-1 ~ mine -30000000 0 8020 air{drop_contents:1b}
execute if score #temp_rej sandwiches matches 0 store result score #temp_rej sandwiches if block ~ ~ ~1 minecraft:dropper[facing=north,triggered=true] run loot insert ~ ~ ~1 mine -30000000 0 8020 air{drop_contents:1b}
execute if score #temp_rej sandwiches matches 0 store result score #temp_rej sandwiches if block ~ ~ ~-1 minecraft:dropper[facing=south,triggered=true] run loot insert ~ ~ ~-1 mine -30000000 0 8020 air{drop_contents:1b}
