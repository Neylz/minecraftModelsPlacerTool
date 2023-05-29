#> mdlt:private/editor/new/main


# setup raycast

## number of iterations
# will check every 1/6th a block
scoreboard players set #temp mdlt.data 61

## check if the player has an item in the offhand
execute if predicate mdlt:empty_offhand run function mdlt:private/editor/errors/no_offhand

## tag the player
tag @s add temp_player


## start the raycast
# rounded down to check at least 6 times a block 
execute unless predicate mdlt:empty_offhand anchored eyes positioned ^ ^ ^.1666 run function mdlt:private/editor/new/raycast


## remove the tag
tag @s remove temp_player