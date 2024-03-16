# Play the sound
execute unless score @s sg.process matches 1.. unless score @s sg.process_timer matches 1.. run playsound sandwiches_galore:block.grinder.grind block @a[distance=..16] ~ ~ ~ .8
# Add to the timer
execute unless score @s sg.process_timer >= $grindTime sg.dummy run scoreboard players add @s sg.process_timer 1
# Add to the shown progress
# Note: maximum visual is 16
execute if score @s sg.process_timer >= $grindTime sg.dummy run scoreboard players add @s sg.process 1
execute if score @s sg.process_timer >= $grindTime sg.dummy run scoreboard players reset @s sg.process_timer

# If the progress item isn't there, do something about it
execute unless data storage sandwiches:temp root.items[{Slot:13b,id:"minecraft:gray_stained_glass_pane",tag:{SG:{GUI_Item:1b}}}] run function sandwiches_galore:machines/slots/13_grinder_on
# Update the progress item's visuals
scoreboard players operation #progress_temp sg.dummy = @s sg.process
scoreboard players add #progress_temp sg.dummy 6710000
execute if score @s sg.process matches 1..16 store result block ~ ~ ~ Items[{Slot:13b,tag:{SG:{GUI_Item:1b}}}].tag.CustomModelData int 1 run scoreboard players get #progress_temp sg.dummy
# Set the block's look to the grinding animation... tickly, for some reason
data modify entity @s item.tag.CustomModelData set value 6710019

# If the shown progress is done, grind the item
execute if score @s sg.process matches 18.. run function sandwiches_galore:machines/grinder/grind_item
