#> mdlt:private/player/display/currentmode


execute if score @s mdlt.player.cycle matches 0 run tellraw @s [{"text": "[","color": "dark_gray"},{"text": "MDLT", "color": "#0393fd"},{"text": "] Edit Mode: "},{"text": "Place new","color": "white"}]
execute if score @s mdlt.player.cycle matches 1 run tellraw @s [{"text": "[","color": "dark_gray"},{"text": "MDLT", "color": "#0393fd"},{"text": "] Edit Mode: "},{"text": "Selection","color": "green"}]
execute if score @s mdlt.player.cycle matches 2 run tellraw @s [{"text": "[","color": "dark_gray"},{"text": "MDLT", "color": "#0393fd"},{"text": "] Edit Mode: "},{"text": "Move","color": "aqua"}]
execute if score @s mdlt.player.cycle matches 3 run tellraw @s [{"text": "[","color": "dark_gray"},{"text": "MDLT", "color": "#0393fd"},{"text": "] Edit Mode: "},{"text": "Rotate","color": "light_purple"}]
execute if score @s mdlt.player.cycle matches 4 run tellraw @s [{"text": "[","color": "dark_gray"},{"text": "MDLT", "color": "#0393fd"},{"text": "] Edit Mode: "},{"text": "Delete","color": "red"}]
