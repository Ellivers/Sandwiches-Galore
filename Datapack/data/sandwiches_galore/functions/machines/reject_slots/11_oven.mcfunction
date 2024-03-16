loot replace block ~ ~ ~ container.11 loot sandwiches_galore:technical/gui_fire
data modify storage sandwiches:galore Item1 set from storage sandwiches:temp root.items[{Slot:11b}]
function sandwiches_galore:machines/reject_slots/common
