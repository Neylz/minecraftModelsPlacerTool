#> mdlt:private/ui/math/input_converts_float
# to execute as the player
# final format: {#temp_int}.{#temp_dec1}{#temp_dec2}{#temp_dec3}

## default value
execute unless score @s mdlt.ui.input matches 1.. run scoreboard players set @s mdlt.ui.input 123

## main
execute store result score #temp_int mdlt.ui.input run scoreboard players operation #temp_dec1 mdlt.ui.input = @s mdlt.ui.input

scoreboard players operation #temp_int mdlt.ui.input /= #1000 mdlt.const
execute store result score #temp_dec2 mdlt.ui.input run scoreboard players operation #temp_dec1 mdlt.ui.input %= #1000 mdlt.const
scoreboard players operation #temp_dec1 mdlt.ui.input /= #100 mdlt.const
execute store result score #temp_dec3 mdlt.ui.input run scoreboard players operation #temp_dec2 mdlt.ui.input %= #100 mdlt.const
scoreboard players operation #temp_dec2 mdlt.ui.input /= #10 mdlt.const
scoreboard players operation #temp_dec3 mdlt.ui.input %= #10 mdlt.const