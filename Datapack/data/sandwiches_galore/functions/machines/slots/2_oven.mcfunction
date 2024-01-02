# Check fuel
function sandwiches_galore:machines/oven/validate_fuel

execute if score #temp2 sg.dummy matches 1 run function sandwiches_galore:machines/oven/bake_start
