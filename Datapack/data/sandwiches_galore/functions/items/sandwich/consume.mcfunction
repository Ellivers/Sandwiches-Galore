data modify storage sandwiches:galore Items set from entity @s SelectedItem.tag.SG.Items

execute if entity @s[advancements={sandwiches_galore:technical/eat_sandwich={ender_pearl=false}}] if data storage sandwiches:galore Item1.tag.SG.Items[0] run function sandwiches_galore:items/sandwich/effects
execute if entity @s[advancements={sandwiches_galore:technical/eat_sandwich={ender_pearl=true}}] run function sandwiches_galore:items/sandwich/teleport/ray_start

advancement revoke @s only sandwiches_galore:technical/eat_sandwich
