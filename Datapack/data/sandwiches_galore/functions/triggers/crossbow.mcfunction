data modify storage sandwiches:galore Item2 set from entity @s SelectedItem.tag.ChargedProjectiles[{tag:{SG:{SandwichArrow:1b}}}]
function sandwiches_galore:items/sandwich/arrow/shoot
advancement revoke @s only sandwiches_galore:technical/use_crossbow