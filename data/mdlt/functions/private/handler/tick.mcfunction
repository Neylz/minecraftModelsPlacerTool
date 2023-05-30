#> mdlt:private/handler/tick



## detect wrench use
execute as @a[scores={mdlt.click.carrot=1..}] at @s run function mdlt:private/wrenchs/carrot/detect
execute as @a[scores={mdlt.click.warped=1..}] at @s run function mdlt:private/wrenchs/warped/detect



## reset sneak time
scoreboard players reset * mdlt.sneak



## animations
scoreboard players add .t mdlt.schedules.glow 1


execute as @e[type=item_display] if score @s mdlt.schedules.glow <= .t mdlt.schedules.glow run function mdlt:private/models/visuals/temp_glow/remove