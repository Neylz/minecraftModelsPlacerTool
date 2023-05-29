#> mdlt:private/wrenchs/actions/main


# detect if sneak and redirect
execute if score @s mdlt.sneak matches 1.. run function mdlt:private/wrenchs/actions/main/right_shift
execute unless score @s mdlt.sneak matches 1.. run function mdlt:private/wrenchs/actions/main/right
