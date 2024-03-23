setblock ~ ~ ~ minecraft:barrel{CustomName:'{"font":"sandwiches_galore:gui","translate":"sandwiches_galore.interface.oven","color":"white","with":[{"translate":"sandwiches_galore.interface.grinder.name","color":"#3F3F3F","font":"minecraft:default"}]}'}

scoreboard players add #gui_id sg.dummy 1
execute positioned ~ ~1 ~ run scoreboard players operation @e[type=minecraft:item_display,tag=sandwiches_galore,tag=sg.oven,sort=nearest,limit=1] sg.gui_id = #gui_id sg.dummy

playsound minecraft:block.netherite_block.place block @a[distance=..16] ~ ~ ~ 1 0.5

execute store result storage sandwiches:galore root.temp.macro_input.player_direction float 1 run function sandwiches_galore:place/get_direction
function sandwiches_galore:place/oven/summon with storage sandwiches:galore root.temp.macro_input

kill @s