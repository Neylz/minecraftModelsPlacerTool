#> mdlt:private/wrenchs/actions/secondary/right_shift


execute if score @s mdlt.player.cycle matches 0 run function mdlt:private/editor/errors/undefinedaction
execute if score @s mdlt.player.cycle matches 1 as @e[type=item_display,tag=mdlt_model,distance=..10] at @s run function mdlt:private/editor/select/reveal
execute if score @s mdlt.player.cycle matches 2 run function mdlt:private/editor/move/unsnapped/main
execute if score @s mdlt.player.cycle matches 3 run function mdlt:private/editor/rotate/counterclockwise/main
execute if score @s mdlt.player.cycle matches 4 run function mdlt:private/editor/errors/undefinedaction