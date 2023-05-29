#> mdlt:private/handler/load
#define score_holder .player_data_version mdlt.data
#define score_holder .cycle_maxid mdlt.data


## loader
function mdlt:private/handler/init



## data version
scoreboard players set .player_data_version mdlt.data 1

## constants
# max id in the cycle of the main wrench (number of elements in the cycle - 1)
scoreboard players set .cycle_maxid mdlt.data 4



## tellraw
tellraw @a [{"text": "[","color": "dark_gray"},{"text": "MDLT", "color": "#0393fd"},{"text": "] "},{"text":"Models placer datapack loaded", "color": "green"}]