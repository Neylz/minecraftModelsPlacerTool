
## modify pos
execute store result score #temp mdlt.data run data get entity @s Pos[1] 1000
scoreboard players operation #temp mdlt.data += @a[tag=temp_player] mdlt.ui.input

## store pos
execute store result entity @s Pos[1] double 0.001 run scoreboard players get #temp mdlt.data
