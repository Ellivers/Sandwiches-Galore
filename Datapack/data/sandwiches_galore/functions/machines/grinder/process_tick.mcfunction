execute unless score @s sg.process matches 1.. unless score @s sg.process_timer matches 1.. run playsound sandwiches_galore:block.grinder.grind block @a ~ ~ ~ .8
#    tellraw @a [{"text": "sg.process: "},{"score": {"name": "@s","objective": "sg.process"}},{"text": " sg.process_timer: "},{"score": {"name": "@s","objective":"sg.process_timer"}}]
execute unless score @s sg.process_timer >= $grindTime sandwiches run scoreboard players add @s sg.process_timer 1
# Note: maximum visual is 16
execute if score @s sg.process_timer >= $grindTime sandwiches run scoreboard players add @s sg.process 1
execute if score @s sg.process matches 18.. run function sandwiches_galore:machines/grinder/grind_item
execute if score @s sg.process matches 18.. run scoreboard players reset @s sg.process
execute if score @s sg.process_timer >= $grindTime sandwiches run scoreboard players reset @s sg.process_timer

execute unless data block ~.01 ~ ~ Items[{Slot:13b,id:"minecraft:gray_stained_glass_pane",tag:{GUI_Item:1b}}] run function sandwiches_galore:machines/slots/13_grinder_on
scoreboard players operation @s sg.process_temp = @s sg.process
scoreboard players add @s sg.process_temp 6710000
execute if score @s sg.process matches 1..16 store result block ~ ~ ~ Items[{Slot:13b,tag:{GUI_Item:1b}}].tag.CustomModelData int 1 run scoreboard players get @s sg.process_temp
data modify entity @s ArmorItems[3].tag.CustomModelData set value 6710019