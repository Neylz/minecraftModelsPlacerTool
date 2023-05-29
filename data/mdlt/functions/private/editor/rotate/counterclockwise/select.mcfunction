#> mdlt:private/editor/rotate/counterclockwise/select


## select player
tag @s add temp_player

execute as @e[type=armor_stand,tag=mdlt_model] if score @s mdlt.model.id = @a[tag=temp_player,limit=1] mdlt.model.id at @s run tp @s ~ ~ ~ ~-45 ~

tag @s remove temp_player