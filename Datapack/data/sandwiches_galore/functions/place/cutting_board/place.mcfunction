execute align xyz run summon minecraft:armor_stand ~.5 ~ ~.5 {DisabledSlots:4079166,NoGravity:1b,Small:1b,ShowArms:1b,Invisible:1b,Tags:["sandwiches_galore","cutting_board","sg.no_fire","sg.non_solid_blocks"],ArmorItems:[{},{},{},{id:"minecraft:netherite_hoe",Count:1b,tag:{CustomModelData:6710017}}]}
playsound minecraft:block.wood.place block @a ~ ~ ~
#execute align xyz run summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Age: -2147483648, Duration: 1, WaitTime: -2147483648, Tags: ["rot_cutting_board"]}
#execute as @e[type=minecraft:area_effect_cloud,tag=rot_cutting_board,limit=1] run function sandwiches_galore:place/cutting_board/rot

kill @s