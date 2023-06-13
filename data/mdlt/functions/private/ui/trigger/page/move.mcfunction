#> mdlt:private/ui/trigger/page/move

scoreboard players operation @s mdlt *= #-1 mdlt.const
execute store result score #temp2 mdlt run scoreboard players operation #temp mdlt = @s mdlt
# determine axis (10=x, 11=y, 12=z)
scoreboard players operation #temp mdlt %= #100 mdlt.const
# determine input button (10=-custom, 11=-0.1, 12=-0.01, 13=-0.001, 14=+0.001, 15=+0.01, 16=+0.1, 17=+custom)
scoreboard players operation #temp2 mdlt /= #100 mdlt.const
scoreboard players operation @s mdlt *= #-1 mdlt.const


execute if score #temp mdlt matches 10 run function mdlt:private/ui/trigger/page/move/x
execute if score #temp mdlt matches 11 run function mdlt:private/ui/trigger/page/move/y
execute if score #temp mdlt matches 12 run function mdlt:private/ui/trigger/page/move/z





## display page
function mdlt:private/ui/trigger/display_previous