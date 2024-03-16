data modify block ~ ~ ~ Items[{Slot:13b,tag:{SG:{GUI_Item:1b}}}].tag.CustomModelData set value 6710024

execute unless data storage sandwiches:temp root.items[{Slot:15b}] run tag @s add sg.output.empty
execute if entity @s[tag=!sg.output.empty] if data storage sandwiches:temp root.items[{tag:{SG:{WheatFlour:1b}},Slot:15b}] run tag @s add sg.output.wheat_flour
execute if entity @s[tag=!sg.output.empty] if data storage sandwiches:temp root.items[{tag:{SG:{BuckwheatFlour:1b}},Slot:15b}] run tag @s add sg.output.buckwheat_flour
execute if entity @s[tag=!sg.output.empty] if data storage sandwiches:temp root.items[{tag:{SG:{NetherSproutFlour:1b}},Slot:15b}] run tag @s add sg.output.nether_sprout_flour
execute if entity @s[tag=!sg.output.empty] if data storage sandwiches:temp root.items[{tag:{SG:{CornFlour:1b}},Slot:15b}] run tag @s add sg.output.corn_flour

execute unless entity @s[tag=!sg.output.empty,tag=!sg.output.wheat_flour] if data storage sandwiches:temp root.items[{id:"minecraft:wheat",Slot:11b}] run function sandwiches_galore:machines/grinder/grind/wheat
execute unless entity @s[tag=!sg.output.empty,tag=!sg.output.buckwheat_flour] if data storage sandwiches:temp root.items[{tag:{SG:{BuckwheatSeeds:1b}},Slot:11b}] run function sandwiches_galore:machines/grinder/grind/buckwheat
execute unless entity @s[tag=!sg.output.empty,tag=!sg.output.nether_sprout_flour] if data storage sandwiches:temp root.items[{tag:{SG:{DriedNetherSprouts:1b}},Slot:11b}] run function sandwiches_galore:machines/grinder/grind/dried_nether_sprouts
execute unless entity @s[tag=!sg.output.empty,tag=!sg.output.corn_flour] if data storage sandwiches:temp root.items[{tag:{SG:{Corncob:1b}},Slot:11b}] run function sandwiches_galore:machines/grinder/grind/corn
function #sandwiches_galore:grinder/output

tag @s remove sg.output.empty
tag @s remove sg.output.wheat_flour
tag @s remove sg.output.buckwheat_flour
tag @s remove sg.output.nether_sprout_flour
tag @s remove sg.output.corn_flour

function sandwiches_galore:machines/grinder/reset_process
