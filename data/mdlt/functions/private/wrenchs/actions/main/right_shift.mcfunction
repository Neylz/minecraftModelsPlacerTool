#> mdlt:private/wrenchs/actions/main/right_shift


## setup/update player data
execute unless score @s mdlt.player.dataversion = .player_data_version mdlt.data run function mdlt:private/player/setup


## cycle
scoreboard players remove @s mdlt.player.cycle 1
execute if score @s mdlt.player.cycle matches ..-1 run scoreboard players operation @s mdlt.player.cycle = .cycle_maxid mdlt.data


function mdlt:private/player/display/currentmode

playsound minecraft:block.comparator.click master @s ~ ~ ~ 1 2 1