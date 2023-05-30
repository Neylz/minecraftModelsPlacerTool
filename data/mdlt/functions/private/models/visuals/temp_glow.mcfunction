#> mdlt:private/models/visuals/temp_glow


## Scoreboard
scoreboard players operation @s mdlt.schedules.glow = .t mdlt.schedules.glow
scoreboard players add @s mdlt.schedules.glow 40

## Glow
data modify entity @s Glowing set value 1b
