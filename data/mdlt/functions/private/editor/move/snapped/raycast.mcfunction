#> mdlt:private/editor/move/snapped/raycast

scoreboard players remove #temp mdlt.data 1
# tellraw @a {"score":{"name":"#temp","objective":"mdlt.data"}}


## exit condition
# if enters the function, then #temp will be set to 0
execute unless block ~ ~ ~ #mdlt:raycastthrough align xyz positioned ~.5 ~1 ~.5 as @e[type=armor_stand,tag=mdlt_model] if score @s mdlt.model.id = @a[tag=temp_player,limit=1] mdlt.model.id run function mdlt:private/editor/move/common/move

## exit passive
execute if score #temp mdlt.data matches 0 run function mdlt:private/editor/errors/no_block

## recursive
execute if score #temp mdlt.data matches 1.. positioned ^ ^ ^.1666 run function mdlt:private/editor/move/snapped/raycast