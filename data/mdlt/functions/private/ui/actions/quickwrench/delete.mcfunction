execute unless score @s mdlt.player.dataversion = .player_data_version mdlt.data run function mdlt:private/player/setup


scoreboard players set @s mdlt.player.cycle 4



function mdlt:private/player/display/currentmode

playsound minecraft:block.comparator.click master @s ~ ~ ~ 1 2 1