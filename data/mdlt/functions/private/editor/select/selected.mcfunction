#> mdlt:private/editor/select/selected

## prevent further raycast
scoreboard players set #temp mdlt.data -1


## select itself
function mdlt:private/editor/select/syncid

# visiuals
effect give @s glowing 2 1 true

# tellraw
tellraw @a[tag=temp_player] [{"text": "[","color": "dark_gray"},{"text": "MDLT", "color": "#0393fd"},{"text": "] "},{"text": "You have selected a model ","color": "yellow"},{"text": "(id:"},{"score":{"name":"@s","objective":"mdlt.model.id"}},{"text":"). "}]