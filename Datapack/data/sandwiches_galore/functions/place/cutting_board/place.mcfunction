# Rushia
playsound minecraft:block.wood.place block @a ~ ~ ~
execute align xyz run summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Age: -2147483648, Duration: 1, WaitTime: -2147483648, Tags: ["sg.rot_cutting_board"]}
execute as @e[type=minecraft:area_effect_cloud,tag=sg.rot_cutting_board,limit=1] run function sandwiches_galore:place/cutting_board/rot

kill @s