execute as @e[type=minecraft:interaction,tag=sandwiches_galore,tag=sg.interactable,nbt={interaction:{}}] at @s run function sandwiches_galore:triggers/interact/run
advancement revoke @s only sandwiches_galore:technical/interact
