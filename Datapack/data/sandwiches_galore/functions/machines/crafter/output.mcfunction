execute unless entity @a[tag=!global.ignore,distance=..7,nbt={Inventory:[{tag:{GUI_Item:1b}}]}] run function sandwiches_galore:machines/crafter/output.once
execute if entity @a[tag=!global.ignore,distance=..7,nbt={Inventory:[{tag:{GUI_Item:1b}}]}] run function sandwiches_galore:machines/crafter/output.full