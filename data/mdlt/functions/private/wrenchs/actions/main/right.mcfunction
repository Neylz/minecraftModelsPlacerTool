#> mdlt:private/wrenchs/actions/main/right

## setup/update player data
execute unless score @s mdlt.player.dataversion = .player_data_version mdlt.data run function mdlt:private/player/setup


## cycle
scoreboard players add @s mdlt.player.cycle 1
execute if score @s mdlt.player.cycle > .cycle_maxid mdlt.data run scoreboard players set @s mdlt.player.cycle 0


function mdlt:private/player/display/currentmode

playsound minecraft:block.comparator.click master @s ~ ~ ~ 1 2 1