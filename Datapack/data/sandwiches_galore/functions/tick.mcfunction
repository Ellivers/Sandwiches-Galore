# Run every tick

    # Increase growth timer
    scoreboard players operation #timeBetweenTicks sandwiches = #maxRandomTickSpeed sandwiches
    scoreboard players operation #timeBetweenTicks sandwiches /= $randomTickSpeed sandwiches
    scoreboard players add $growth_timer sandwiches 1
    scoreboard players add #alternate sandwiches 1
    execute if score #alternate sandwiches matches 2 run scoreboard players set #alternate sandwiches 0

    # Run the entity tick function, as (& at) all entities with the sandwiches_galore tag
    execute as @e[type=#sandwiches_galore:entities,tag=sandwiches_galore] at @s run function sandwiches_galore:entity_tick
    # Run an item check
    execute as @e[type=minecraft:item,tag=!sg.dont_check,tag=!global.ignore,tag=!global.ignore.kill,nbt={OnGround:1b}] at @s if entity @a[distance=..6] run function sandwiches_galore:item_tick
    # Run as players
    execute as @a at @s run function sandwiches_galore:player_tick

    # Reset growth timer
    execute if score $growth_timer sandwiches >= $randomTickSpeed sandwiches run scoreboard players reset $growth_timer sandwiches
