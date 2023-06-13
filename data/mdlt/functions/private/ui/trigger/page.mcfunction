#> mdlt:private/ui/trigger/page

## actions (inputs)
execute if score @s mdlt matches -100504 run function mdlt:private/ui/actions/give

# change wrench mode
execute if score @s mdlt matches -80407 run function mdlt:private/ui/actions/quickwrench/new
execute if score @s mdlt matches -80408 run function mdlt:private/ui/actions/quickwrench/selection
execute if score @s mdlt matches -80409 run function mdlt:private/ui/actions/quickwrench/move
execute if score @s mdlt matches -80410 run function mdlt:private/ui/actions/quickwrench/rotate
execute if score @s mdlt matches -80411 run function mdlt:private/ui/actions/quickwrench/delete


## actions move
execute if score @s mdlt matches -1999..-1000 run function mdlt:private/ui/trigger/page/move


## pages
execute if score @s mdlt matches 1 run function mdlt:private/ui/pages/main
execute if score @s mdlt matches 2 run function mdlt:private/ui/pages/move


## store page
execute if score @s mdlt matches 0.. run scoreboard players operation @s mdlt.ui.page = @s mdlt




scoreboard players set @s mdlt 0
scoreboard players enable @s mdlt
