## select player
tag @s add temp_player

execute as @e[type=item_display,tag=mdlt_model] if score @s mdlt.model.id = @a[tag=temp_player,limit=1] mdlt.model.id at @s run function mdlt:private/ui/trigger/page/move/z/mc_p

tag @s remove temp_player