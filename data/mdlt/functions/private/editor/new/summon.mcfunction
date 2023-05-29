#> mdlt:private/editor/new/summon

## prevent further raycast
scoreboard players set #temp mdlt.data -1

## edit the AS
data merge entity @s {NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["mdlt_model", "mdlt_armorstand"]}
item replace entity @s armor.head from entity @a[tag=temp_player,limit=1] weapon.offhand


## attribute id
scoreboard players operation @s mdlt.model.id = .nextid mdlt.model.id

scoreboard players add .nextid mdlt.model.id 1


## select itself
function mdlt:private/editor/select/syncid

# visiuals
effect give @s glowing 2 1 true

# tellraw
tellraw @a[tag=temp_player] [{"text": "[","color": "dark_gray"},{"text": "MDLT", "color": "#0393fd"},{"text": "] "},{"text": "Model summoned ","color": "green"},{"text": "(id:"},{"score":{"name":"@s","objective":"mdlt.model.id"}},{"text":"). "},{"text":"This model have been automatically selected.", "color": "yellow"}]
