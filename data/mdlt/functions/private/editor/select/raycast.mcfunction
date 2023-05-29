#> mdlt:private/editor/select/raycast

scoreboard players remove #temp mdlt.data 1
# tellraw @a {"score":{"name":"#temp","objective":"mdlt.data"}}


## exit condition
# if enters the function, then #temp will be set to 0
execute unless block ~ ~ ~ #mdlt:raycastthrough align y positioned ~ ~1 ~ as @e[type=armor_stand,tag=mdlt_model,distance=..7,sort=nearest,limit=1] run function mdlt:private/editor/select/selected
execute if score #temp mdlt.data matches 0.. as @e[type=armor_stand,tag=mdlt_model,distance=...5,sort=nearest,limit=1] run function mdlt:private/editor/select/selected

## exit passive
execute if score #temp mdlt.data matches 0 run function mdlt:private/editor/errors/no_model

## recursive
execute if score #temp mdlt.data matches 1.. positioned ^ ^ ^.1666 run function mdlt:private/editor/select/raycast