#> mdlt:private/editor/move/snapped/select$




## number of iterations
# will check every 1/6th a block
scoreboard players set #temp mdlt.data 91


## tag the player
tag @s add temp_player


## start the raycast
# rounded down to check at least 6 times a block 
execute anchored eyes positioned ^ ^ ^.1666 run function mdlt:private/editor/move/snapped/raycast


## remove tag
tag @s remove temp_player