#Run every tick

    #Increate growth timer
    scoreboard players add $growth_timer sandwiches 1

    #Run the entity tick function, as (& at) all entities with the sandwiches_galore tag
    execute as @e[type=minecraft:armor_stand,tag=sandwiches_galore] at @s run function sandwiches_galore:entity_tick
    #Run an item check
    execute as @e[type=minecraft:item,tag=!sg.dont_check,tag=!global.ignore,tag=!global.ignore.kill,nbt={OnGround:1b}] at @s if entity @a[distance=..6] run function sandwiches_galore:item_tick

    #Reset growth timer
    execute if score $growth_timer sandwiches >= $growthAttemptPoint sandwiches run scoreboard players reset $growth_timer sandwiches

    #Clear items from GUIs, and those that are used for right-click detection
    execute as @a[tag=!global.ignore] run clear @s #sandwiches_galore:gui_items{GUI_Item:1b}