# Run every tick

    # Increase growth timer
    scoreboard players operation #timeBetweenTicks sg.dummy = #maxRandomTickSpeed sg.dummy
    scoreboard players operation #timeBetweenTicks sg.dummy /= $randomTickSpeed sg.dummy
    scoreboard players add $growth_timer sg.dummy 1
    scoreboard players add #alternate sg.dummy 1
    execute if score #alternate sg.dummy matches 2 run scoreboard players set #alternate sg.dummy 0

    # Run the entity tick function, as (& at) all entities with the sandwiches_galore tag
    execute as @e[type=#sandwiches_galore:entities,tag=sandwiches_galore] at @s run function sandwiches_galore:entity_tick
    # Run an item check
    execute as @e[type=minecraft:item,tag=!sg.dont_check,tag=!global.ignore,tag=!global.ignore.kill,nbt={OnGround:1b}] at @s if entity @a[distance=..6] run function sandwiches_galore:item_tick
    # Run as players
    execute as @a at @s run function sandwiches_galore:player_tick

    # Reset growth timer
    execute if score $growth_timer sg.dummy >= $randomTickSpeed sg.dummy run scoreboard players reset $growth_timer sg.dummy
