loot spawn ~ ~1 ~ loot sandwiches_galore:blocks/corn_ready

scoreboard players set @s sg.growth_state 7
function sandwiches_galore:crops/corn/update

playsound sandwiches_galore:block.corn.harvest block @a ~ ~1 ~

scoreboard players set #temp sandwiches 0
