#> mdlt:private/wrenchs/actions/secondary/right


# detect curent edit mode
execute if score @s mdlt.player.cycle matches 0 run function mdlt:private/editor/new/main
execute if score @s mdlt.player.cycle matches 1 run function mdlt:private/editor/select/main
execute if score @s mdlt.player.cycle matches 2 run function mdlt:private/editor/move/snapped/main
execute if score @s mdlt.player.cycle matches 3 run function mdlt:private/editor/rotate/clockwise/main
execute if score @s mdlt.player.cycle matches 4 run function mdlt:private/editor/delete/main