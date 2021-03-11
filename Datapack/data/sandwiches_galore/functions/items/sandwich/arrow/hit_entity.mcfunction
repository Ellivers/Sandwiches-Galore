particle item cookie{CustomModelData:6710001} ~ ~ ~ .2 .3 .2 .08 20 force

data modify storage sandwiches:galore Items set from entity @s ArmorItems[0].tag.SG.Items
scoreboard players operation #temp_id sandwiches = @s sg.id
execute as @e[tag=!global.ignore,nbt={HurtTime:10s},sort=nearest,limit=1] at @s run function sandwiches_galore:items/sandwich/arrow/hit_entity2
#execute as @p[advancements={sandwiches_galore:technical/player_shot=true}] at @s run function sandwiches_galore:items/sandwich/arrow/hit_entity2

kill @s