#> mdlt:private/editor/delete/select


## select player
tag @s add temp_player

execute store success score #result mdlt.data as @e[type=item_display,tag=mdlt_model] if score @s mdlt.model.id = @a[tag=temp_player,limit=1] mdlt.model.id at @s run kill @s

tag @s remove temp_player

## reset player selection
scoreboard players reset @s mdlt.model.id