#> mdlt:private/ui/trigger/value


# if < 0 then return -x
execute if score @s mdlt.input matches ..-1 run scoreboard players operation @s mdlt.input *= #-1 mdlt.const


# transfer value
scoreboard players operation @s mdlt.ui.input = @s mdlt.input


# tellraw
function mdlt:private/ui/math/input_converts_float

tellraw @s [{"text":"[","color":"dark_gray"},{"text":"MDLT","color":"#0393FD"},{"text":"] "},{"text": "Input value now set to ", "color": "gray"},{"color":"yellow","score":{"name":"#temp_int","objective":"mdlt.ui.input"}},{"text": ".","color": "yellow"},{"color":"yellow","score":{"name":"#temp_dec1","objective":"mdlt.ui.input"}},{"color":"yellow","score":{"name":"#temp_dec2","objective":"mdlt.ui.input"}},{"color":"yellow","score":{"name":"#temp_dec3","objective":"mdlt.ui.input"}},{"text": " blocks.","color": "gray"}]



scoreboard players set @s mdlt.input 0
scoreboard players enable @s mdlt.input


## display previous page
function mdlt:private/ui/trigger/display_previous