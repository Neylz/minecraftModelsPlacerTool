#> mdlt:private/editor/move/unsnapped/raycast

scoreboard players remove #temp mdlt.data 1
# tellraw @a {"score":{"name":"#temp","objective":"mdlt.data"}}


## exit condition
# if enters the function, then #temp will be set to 0
execute unless block ~ ~ ~ #mdlt:raycastthrough align y positioned ~ ~1 ~ as @e[type=item_display,tag=mdlt_model] if score @s mdlt.model.id = @a[tag=temp_player,limit=1] mdlt.model.id run function mdlt:private/editor/move/common/move

## exit passive
execute if score #temp mdlt.data matches 0 run function mdlt:private/editor/errors/no_block

## recursive
execute if score #temp mdlt.data matches 1.. positioned ^ ^ ^.1666 run function mdlt:private/editor/move/unsnapped/raycast