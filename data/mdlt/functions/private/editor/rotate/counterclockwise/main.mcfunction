#> mdlt:private/editor/rotate/counterclockwise/main


## check if player has selected a model
execute unless score @s mdlt.model.id matches 0.. run function mdlt:private/editor/errors/no_selection
execute if score @s mdlt.model.id matches 0.. run function mdlt:private/editor/rotate/counterclockwise/select
