# Called by sandwiches_galore:place/oven/place and sandwiches_galore:place/cutting_board/place
# Gets the direction the player is facing

execute as @p[advancements={sandwiches_galore:technical/place_item_frame=true}] run return run function sandwiches_galore:place/get_direction.as_player
