execute unless block ~ ~ ~ minecraft:barrel run function sandwiches_galore:break/crafter
execute if data block ~.01 ~ ~ Items[{Slot:0b}] run function sandwiches_galore:machines/slots/0_crafter

execute if block ~ ~ ~ minecraft:barrel[open=true] run function sandwiches_galore:machines/crafter/tick