#> mdlt:private/editor/new/raycast

scoreboard players remove #temp mdlt.data 1
# tellraw @a {"score":{"name":"#temp","objective":"mdlt.data"}}




## exit condition
# if enters the function, then #temp will be set to 0
execute unless block ~ ~ ~ #mdlt:raycastthrough align xyz positioned ~.5 ~1 ~.5 summon item_display run function mdlt:private/editor/new/summon

## exit passive
execute if score #temp mdlt.data matches 0 run function mdlt:private/editor/errors/no_block

## recursive
execute if score #temp mdlt.data matches 1.. positioned ^ ^ ^.1666 run function mdlt:private/editor/new/raycast